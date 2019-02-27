<%--
  Created by IntelliJ IDEA.
  User: AoiGo
  Date: 2019/1/17
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>

    <script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap-table.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap-table.css">
    <script src="https://cdn.bootcss.com/bootstrap-table/1.13.1/locale/bootstrap-table-zh-CN.js"></script>
    <%--模态框--%>
    <script src="${pageContext.request.contextPath}/static/sweetalert/sweetalert.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/sweetalert/sweetalert.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/sweetalert/sweetalert.css">

<title>学生管理系统</title>

</head>
<body>
<%--编辑学生的模态框--%>
<div class="modal fade" id="editStudent" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">信息修改</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">学生id</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="id"  id="studentId_update" disabled="disabled"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">学生姓名</label>
                        <div class="col-sm-10">
                            <input type="text" name="name" class="form-control" id="studentName_update">
                            <%--<span class="help-block"></span>--%>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-10">
                            <label class="radio-inline">
                                <input type="radio" name="gender" id="studentGender1_update_input" value="1"> 男
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="gender" id="studentGender2_update_input" value="0"> 女
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">学生住址</label>
                        <div class="col-sm-10">
                            <input type="text" name="location" class="form-control" id="studentLocation_update">
                            <%--<span class="help-block"></span>--%>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">学生专业</label>
                        <div class="col-sm-10">
                            <input type="text" name="major" class="form-control" id="studentMajor_update">
                            <%--<span class="help-block"></span>--%>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">学生班级</label>
                        <div class="col-sm-10">
                            <input type="text" name="classname" class="form-control" id="studentClassName_update">
                            <%--<span class="help-block"></span>--%>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">角色</label>
                        <div class="col-sm-10">
                            <label class="radio-inline">
                                <input type="radio" name="role" id="studentRole1_update_input" value="1" > 管理员
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="role" id="studentRole2_update_input" value="0"> 用户
                            </label>
                            <%--<span class="help-block"></span>--%>
                        </div>
                    </div>
                    <%--<div class="form-group">--%>
                    <%--<label class="col-sm-2 control-label">deptName</label>--%>
                    <%--<div class="col-sm-4">--%>
                    <%--<!-- 部门提交部门id即可 -->--%>
                    <%--<select class="form-control" name="dId">--%>
                    <%--</select>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                </form>
            </div>
            <div class="modal-footer">
                <div class="col-sm-12">
                    <button type="button" class="btn btn-default col-sm-5" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary pull-right col-sm-5" onclick= "emp_update_btn()">更新</button>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid">

    <%--学生表格--%>
    <div  class="panel">
        <div class="bar">
            <div id="toolbar" class="btn-group">
                <button id="btn_add" type="button" class="btn btn-default">
                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
                </button>
                <button id="btn_edit" type="button" class="btn btn-default">
                    <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
                </button>
                <button id="btn_delete" type="button" class="btn btn-default">
                    <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
                </button>
            </div>
        </div>
        <table class="table table-hover" id="table" >
            <thead>
            <tr>
                <th data-field="checkAll"></th>
                <th data-field="id">编号</th>
                <th data-field="name">姓名</th>
                <th data-field="sex">性别</th>
                <th data-field="location">位置</th>
                <th data-field="major">专业</th>
                <th data-field="classname">班级</th>
                <th data-field="datetime">入学时间</th>
                <th data-field="role">角色</th>
                <th>操作</th>
            </tr>
            </thead>
        </table>
    </div>
</div>
<script>


    window.operateEvents = { //操作下的组件
        //查看按钮
        //查看按钮
        "click #checkTable" : function (e,value,row,index) {

        },

//    编辑按钮
        "click #editTable" : function (e,value,row,index) {
            $("#editStudent").on('show.bs.modal',function (event) {
                //初始化模态框里面的数据
                var modal = $(this);
                modal.find(".modal-body #studentId_update").val(row["id"]);
                modal.find(".modal-body #studentName_update").val(row["name"]);
                if(row["sex"] == "1"){
                    modal.find(".modal-body #studentGender1_update_input").prop('checked',true);
                }else{
                    modal.find(".modal-body #studentGender2_update_input").prop('checked',true);
                }

                modal.find(".modal-body #studentLocation_update").val(row['location']);

                modal.find(".modal-body #studentMajor_update").val(row["major"]);

                modal.find(".modal-body #studentClassName_update").val(row["classname"]);

                if(row['role'] === 1){
                    modal.find(".modal-body #studentRole1_update_input").prop("checked",true);
                }else{
                    modal.find(".modal-body #studentRole2_update_input").prop("checked",true);
                }

            });

            $("#editStudent").modal("show");
        },
        //删除按钮
        "click #deleteTable" : function (e,value,row,index) {
            swal({
                    title: "确定删除吗？",
                    text: "你将无法恢复该虚拟文件！",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "确定删除！",
                    cancelButtonText: "抱歉，手滑了！",
                    closeOnConfirm: false,
                    closeOnCancel: false
                },
                function(isConfirm){
                    if (isConfirm) {
                        $.ajax({
                            url:'${pageContext.request.contextPath}/Students/DeleteStudent',
                            type:'post',
                            contentType:'application/json;charset=utf-8',
                            dataType:'json',
                            data:JSON.stringify({id:row['id']}),
                            success:function (result) {
                                if(result.result === "success"){
                                    swal("成功","成功删除数据！","success");
                                    $('#table').bootstrapTable("refresh");
                                }
                            }

                        })

                    } else {
                        swal("取消！", "你的虚拟文件是安全的:)", "error");
                    }
                });
        },

    }

    function emp_update_btn () {
        //没有检验数据是否正确 请注意
        var student ={
            id:$("#studentId_update").val(),
            name:$("#studentName_update").val(),
            sex:$("#editStudent input[name='gender']:checked").val(),
            major:$("#studentMajor_update").val(),
            location:$("#studentLocation_update").val(),
            classname:$("#studentClassName_update").val(),
            role:$("#editStudent input[name='role']:checked").val(),
        };

        $.ajax({
            url:'${pageContext.request.contextPath}/Students/updateStudent',
            type:'post',
            dataType:'json',
            contentType:'application/json;charset = utf-8',
            data:JSON.stringify(student),
            success:function (result) {
                if(result.result === "success"){
                    swal("成功","成功更新数据！","success");
                    $('#table').bootstrapTable("refresh");
                    $("#editStudent").modal("hide");
                }
            }

        })

    }



    $(function () {


        /*bootstrap table*/
        $('#table').bootstrapTable({
            url:"${pageContext.request.contextPath}/Students/TestTable",//请求数据url
            queryParams: function (params) {
                return {
                    offset: params.offset,  //偏移量
                    limit: params.limit,   //页面大小
                    // search : params.search, //搜索
                    order : params.order, //排序
                    sort: params.sort //排序
                };
            },
            method: 'GET',                      //请求方式（*）
            toolbar: '#toolbar',              //工具按钮用哪个容器
            //striped: true,                      //是否显示行间隔色
            cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            pagination: true,                   //是否显示分页（*）
            sortable: true,                     //是否启用排序
            sortOrder: "asc",                   //排序方式
            sortName:"id",
            sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
            // pageNumber: 1,                      //初始化加载第一页，默认第一页,并记录
            // pageSize: ,                     //每页的记录行数（*）
            pageList: [5, 10, 20, 25],        //可供选择的每页的行数（*）
            search: false,                      //是否显示表格搜索
            strictSearch: true,
            showColumns: true,                  //是否显示所有的列（选择显示的列）
            showRefresh: true,                  //是否显示刷新按钮
            minimumCountColumns: 2,             //最少允许的列数
            clickToSelect: true,                //是否启用点击选中行
            height: 500,                      //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
            uniqueId: "id",                     //每一行的唯一标识，一般为主键列
            showToggle: true,                   //是否显示详细视图和列表视图的切换按钮
            cardView: false,                    //是否显示详细视图
            detailView: false,                  //是否显示父子表
            undefinedText: 'x', //当数据为 undefined 时显示的字符
            // search: true,//显示搜索框  这里是客户端搜素 意义不大
            rowStyle: function (row, index) {  //设定行样式
                //这里有5个取值代表5中颜色['active', 'success', 'info', 'warning', 'danger'];
                var strclass = "";
                if (row.role == 1) {
                    strclass = 'success';//还有一个active
                }
                else if (row.role == 0) {
                    strclass = 'active';
                }
                else {
                    return {};
                }
                return { classes: strclass }
            },
            //表格的列
            columns: [
                {
                    field:'checkAll',
                    checkbox:true,
                    align:'center',
                    formatter :function (value,row,index) {

                        if (row.state == true)
                            return {
                                disabled : true,//设置是否可用
                                checked : false//设置选中
                            };
                        return value;
                    }
                },
                {
                    field: 'id',//域值
                    title: '编号',//标题
                    // visible: true,//false表示不显示
                    sortable: true,//启用排序
                    // width : '5%',
                    align:"center",
                },
                {
                    field: 'name',//域值
                    title: '姓名',//标题
                    // visible: true,//false表示不显示
                    sortable: true,//启用排序
                    // width : '30%',
                    // editable:true,
                    align:"center",
                },
                {
                    field: 'sex',//域值
                    title: '性别',//标题
                    // visible: true,//false表示不显示
                    // sortable: true,//启用排序
                    // width : '30%',
                    // editable:true,
                    align:"center",
                    formatter : function (value, row, index) {
                        if (row['sex'] === 1) {
                            return '男';
                        }
                        if (row['sex'] === 0) {
                            return '女';
                        }
                        return "未知";
                    }
                },
                {
                    field: 'location',//域值
                    title: '位置',//标题
                    // visible: true,//false表示不显示
                    sortable: true,//启用排序
                    // width : '30%',
                    // editable:true,
                    align:"center",
                },
                {
                    field: 'major',//域值
                    title: '专业',//内容
                    // visible: true,//false表示不显示
                    sortable: true,//启用排序
                    // width : '35%',
                    // editable:true,
                    align:"center",
                },
                {
                    field: 'classname',//域值
                    title: '班级',//内容
                    // visible: true,//false表示不显示
                    sortable: true,//启用排序
                    // width : '35%',
                    // editable:true,
                    align:"center",
                },
                {
                    field:'datetime',
                    title:'入学时间',
                    align:'center',
                },
                {
                    field: 'role',//域值
                    title: '角色',//内容
                    align:"center",
                    // visible: true,//false表示不显示
                    sortable: true,//启用排序
                    // width : '20%',
                    formatter : function (value, row, index) {
                        if (row['role'] === 1) {
                            return '管理员';
                        }
                        if (row['role'] === 0) {
                            return '用户';
                        }
                        return "未标识用户";
                    }
                },
                {
                    // field:'id',
                    title: '操作',
                    align: 'center',
                    events: operateEvents,
                    formatter: function (value, row, rowIndex) {
                        var result = "";
                        result += "<button type='button' class='btn btn-sm btn-info'  id='checkTable'  title='查看'><span class='glyphicon glyphicon-search'></span></button>";
                        result += "<button type='button' class='btn btn-sm btn-warning' id='editTable' style='margin-left: 4px;' title='编辑'><span class='glyphicon glyphicon-pencil'></span></button>";
                        result += "<button type='button' class='btn btn-sm btn-danger' id='deleteTable' style='margin-left: 4px;' title='删除'><span class='glyphicon glyphicon-remove'></span></button>";
                        return result;
                    }
                }
            ],
            onLoadSuccess: function () {
                //加载成功时执行
                console.log("加载成功!");
            }, onLoadError: function () {
                //加载失败时执行
                console.log("加载失败!");
            }, formatLoadingMessage: function () {
                //正在加载
                return "玩命加载中...";
            }, formatNoMatches: function () {
                //没有匹配的结果
                return '客官,无符合条件的记录..';
            }
        });
    });
</script>
</body>

</html>
<%--
  Created by IntelliJ IDEA.
  User: AoiGo
  Date: 2019/2/14
  Time: 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://cdn.bootcss.com/echarts/4.2.1-rc1/echarts-en.common.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js"></script>
</head>
<body>
<div id="dy"  style="height: 600px;width: 1100px;margin-top: 50px;margin-left:20px;">
    <div id="mainChart" style="border: 1px solid #438FB9; width:60%; height:45%;"></div>
</div>

<script type="text/javascript">
    //使用ajax加载数据
    $.ajax({
        method:'post',
        url:'${pageContext.request.contextPath}/Students/EChartsTest',
        dataType:'json',
        success:function(data){
            initChat(data);
        }
    });
    function initChat(data){
        var myChart = echarts.init(document.getElementById('mainChart'));
        option = {
            title : {
                text: '员工男女比例统计',
                subtext: '内部数据',
                x:'center'
            },
            tooltip : {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },
            legend: {
                orient: 'vertical',
                left: 'left',
                data: data
            },
            series : [
                {
                    name: '男女数量',
                    type: 'pie', //饼状图
                    radius : '55%',
                    center: ['50%', '60%'],
                    data:data,
                    itemStyle: {
                        emphasis: {
                            shadowBlur: 10,
                            shadowOffsetX: 0,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                }
            ]
        },
            myChart.setOption(option);
    };
</script>
</body>
</html>

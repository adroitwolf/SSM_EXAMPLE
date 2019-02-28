<%--
  Created by IntelliJ IDEA.
  User: AoiGo
  Date: 2019/2/11
  Time: 12:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <base id="base" href="${base}">
    <meta charset="UTF-8">
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/login.css" />
    <!--必要样式-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/component.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/layui/css/layui.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/sweetalert/sweetalert.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/sweetalert/sweetalert.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/sweetalert/sweetalert.min.js"></script>
    <script>
        if(window != top){
            top.location.href = location.href;
        }
    </script>
</head>
<body>

<div class="container demo-1">
    <div class="content">
        <div id="large-header" class="large-header">
            <canvas id="demo-canvas"></canvas>
            <div class="logo_box">
                <h3>欢迎你</h3>
                <form action="${pageContext.request.contextPath}/login" name="login" method="post">
                    <div class="input_outer">
                        <span class="u_user"></span>
                        <input name="username" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入账户">
                    </div>
                    <div class="input_outer">
                        <span class="us_uer"></span>
                        <input name="password" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请输入密码">
                    </div>
                    <div class="mb2 layui-hide">
                        <div class="main-checkbox">
                            <input type="checkbox" value="1" id="checkbox1" name="rememberMe" checked/>
                            <label for="checkbox1"></label>
                        </div>
                        <span class="text">Remember me</span>
                    </div>
                    <div class="mb2"><a id = "sub"  lay-filter="sub" class="act-but submit" href="javascript:document.login.submit();" style="color: #FFFFFF">登录</a></div>
                </form>
            </div>
        </div>
    </div>
</div><!-- /container -->
<script src="${pageContext.request.contextPath}/static/js/TweenLite.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/EasePack.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/rAF.js"></script>
<script src="${pageContext.request.contextPath}/static/js/login.js"></script>
<script>
    $(function () {
        if("${Info}" != null && "${Info}" != ''){
            swal("失败","${Info}","error");
        }
    })
</script>
</body>

</html>

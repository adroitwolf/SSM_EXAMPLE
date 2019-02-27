<%--
  Created by IntelliJ IDEA.
  User: AoiGo
  Date: 2019/2/14
  Time: 8:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <title>测试主页demo</title>

    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <!--[if lt IE 8]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->

    <%--<link rel="shortcut icon" href="${pageContext.request.contextPath}/static/fonts/favicon.ico">--%>
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/style.min.css?v=4.0.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet">
</head>

<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
<div id="wrapper">
    <!--左侧导航开始-->
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="nav-close"><i class="fa fa-times-circle"></i>
        </div>
        <div class="sidebar-collapse">
            <ul class="nav" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element">
                        <span><img alt="image" class="img-circle" src="${pageContext.request.contextPath}/static/img/profile_small.jpg" /></span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                               <span class="block m-t-xs"><strong class="font-bold">${USER_SESSION}</strong></span>
                                <span class="text-muted text-xs block">${USER_ROLE}<b class="caret"></b></span>
                                </span>
                        </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a class="J_menuItem" href="#"><i class="fa fa-user-circle"></i><span style="margin-left: 5px;">修改头像</span></a>
                            </li>
                            <li><a class="J_menuItem" href="#"><i class="fa fa-id-card"></i><span style="margin-left: 5px;">个人资料</span></a>
                            </li>
                            <li><a class="J_menuItem" href="#"><i class="fa fa-envelope-o"></i><span style="margin-left: 5px;">联系我们</span></a>
                            </li>
                            <li><a class="J_menuItem" href="#"><i class="fa fa-comments-o"></i><span style="margin-left: 5px;">信箱</span></a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="${pageContext.request.contextPath}/logout"><i class=" fa fa-sign-out"></i><span>安全退出</span></a>
                            </li>
                        </ul>
                    </div>
                    <div class="logo-element">A
                    </div>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-home"></i>
                        <span class="nav-label">主页</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a class="J_menuItem" href="${pageContext.request.contextPath}/jsp/stuManager.jsp" data-index="0">学生管理</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="${pageContext.request.contextPath}/jsp/chart.jsp">聊天室</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="${pageContext.request.contextPath}/jsp/chat.jsp">bootstrap聊天室</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="index_v4.html">主页示例四</a>
                        </li>
                        <li>
                            <a href="index_v5.html" target="_blank">主页示例五</a>
                        </li>
                    </ul>

                </li>
                <li>
                    <a class="J_menuItem" href="${pageContext.request.contextPath}/jsp/echarts_test.jsp"><i class="fa fa-bar-chart"></i> <span class="nav-label">图表</span></a>
                </li>

            </ul>
        </div>
    </nav>
    <!--左侧导航结束-->
    <!--右侧部分开始-->
    <div id="page-wrapper" class="gray-bg dashbard-1">
        <div class="row content-tabs">
            <button class="roll-nav roll-left J_tabLeft"><i class="fa fa-backward"></i>
            </button>
            <nav class="page-tabs J_menuTabs">
                <div class="page-tabs-content">
                    <a href="javascript:;" class="active J_menuTab" data-id="${pageContext.request.contextPath}/jsp/index.jsp">首页</a>
                </div>
            </nav>
            <button class="roll-nav roll-right J_tabRight"><i class="fa fa-forward"></i>
            </button>
            <div class="btn-group roll-nav roll-right">
                <button class="dropdown J_tabClose" data-toggle="dropdown">关闭操作<span class="caret"></span>

                </button>
                <ul role="menu" class="dropdown-menu dropdown-menu-right">
                    <li class="J_tabShowActive"><a>定位当前选项卡</a>
                    </li>
                    <li class="divider"></li>
                    <li class="J_tabCloseAll"><a>关闭全部选项卡</a>
                    </li>
                    <li class="J_tabCloseOther"><a>关闭其他选项卡</a>
                    </li>
                </ul>
            </div>
            <a href="${pageContext.request.contextPath}/logout" class="roll-nav roll-right J_tabExit"><i class="fa fa fa-sign-out"></i> 退出</a>
        </div>
        <div class="row J_mainContent" id="content-main">
            <iframe class="J_iframe" name="iframe0" width="100%" height="100%" src="${pageContext.request.contextPath}/jsp/index.jsp" frameborder="0" data-id="index.jsp" seamless></iframe>
        </div>
        <div class="footer">
            <div class="text-center">&copy; Copyright 2018-2020, All Rights Reserved By WHOAMI
            </div>
        </div>
    </div>
    <!--右侧部分结束-->
</div>
<script src="${pageContext.request.contextPath}/static/js/jquery.min.js?v=2.1.4"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js?v=3.3.5"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/layer/layer.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/hplus.min.js?v=4.0.0"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/contabs.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/pace/pace.min.js"></script>
</body>

</html>

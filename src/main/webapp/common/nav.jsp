<%--
  Created by IntelliJ IDEA.
  User: AoiGo
  Date: 2019/2/11
  Time: 15:28
  头部导航栏
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">逝痕</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">控制台</a></li>
            <li class="layui-nav-item"><a href="">商品管理</a></li>
            <li class="layui-nav-item"><a href="">用户</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其它系统</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img"> ${USER_SESSION}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href=""><i class="fa fa-user-circle-o"></i>&nbsp;基本资料</a></dd>
                    <dd><a href=""><i class="fa fa-asterisk"></i>&nbsp;安全设置</a></dd>
                    <hr class="layui-bg-gray">
                    <dd><a href="/logout"><i class="fa fa-sign-out"></i>&nbsp;登出</a></dd>
                </dl>
            </li>
        </ul>
    </div>

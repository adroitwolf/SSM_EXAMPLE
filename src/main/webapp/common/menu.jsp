<%--
  Created by IntelliJ IDEA.
  User: AoiGo
  Date: 2019/2/11
  Time: 15:27
  这是左侧的菜单栏  注意要导入layui的框架
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
        <ul class="layui-nav layui-nav-tree">
            <li class="layui-nav-item layui-nav-itemed">
                <a class="" href="javascript:;">成员管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="#" data-url="${pageContext.request.contextPath}/jsp/stuManager.jsp" data-type="tabAdd" data-id="stuManager" class="site-main-active" data-title="学生管理">学生管理</a></dd>
                    <dd><a href="javascript:;">图标渲染</a></dd>
                    <dd><a href="javascript:;">列表三</a></dd>
                    <dd><a href="">超链接</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">解决方案</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;">列表一</a></dd>
                    <dd><a href="javascript:;">列表二</a></dd>
                    <dd><a href="">超链接</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">云市场</a></li>
            <li class="layui-nav-item"><a href="">发布商品</a></li>
        </ul>
    </div>
</div>

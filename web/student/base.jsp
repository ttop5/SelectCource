<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="lib.Dao.StudentDAO" %>
<%@ page import="lib.Model.User" %>
<%--
  Created by IntelliJ IDEA.
  User: ttop5
  Date: 16-4-21
  Time: 下午6:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>选课管理信息系统</title>
    <link href="../static/css/bootstrap.min.css" rel="stylesheet">
    <link href="../static/css/index.css" rel="stylesheet">
    <link href="../static/css/student.css" rel="stylesheet">
</head>
<body>

    <%
        if (session.getAttribute("currentUser") == null) {
            response.sendRedirect("../index.jsp");
        }
    %>

    <c:if test="${currentUser.role == 0}">
        <% response.sendRedirect("../admin/index.jsp"); %>
    </c:if>
    <c:if test="${currentUser.role == 1}">
        <% response.sendRedirect("../teacher/index.jsp"); %>
    </c:if>

    <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">SDUTSSCM</a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="index.jsp">首页</a></li>
                    <li><a href="notes.jsp">公告</a></li>
                    <li><a href="scource.jsp">选课</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">信息查询 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="infoscore.jsp">成绩查询</a></li>
                            <li><a href="infoscource.jsp">选课情况查询</a></li>
                            <%--<li><a>--%>
                                    <%--<form action="infoscource.jsp">--%>
                                        <%--<input type="submit" value="选课情况查询"/>--%>
                                    <%--</form>--%>
                                <%--</a>--%>
                            <%--</li>--%>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">个人信息 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="changepasswd.jsp">密码修改</a></li>
                            <li><a href="changeinfo.jsp">个人信息修改</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a>欢迎您，${currentUser.name}同学！</a></li>
                    <li><a href="../signout.jsp">【注销】</a></li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </nav>

    <footer class="footer">
        <div class="container">
            <p class="text-muted">
                Copyright &copy 2016 <a href="http://ttop5.net/"> ttop5 </a>. All right reserved.
            </p>
        </div>
    </footer>

    <script src="../static/js/jquery.min.js"></script>
    <script src="../static/js/bootstrap.min.js"></script>

</body>
</html>

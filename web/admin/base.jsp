<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="lib.Dao.AdminDAO" %>
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
    <link href="../static/css/admin.css" rel="stylesheet">
</head>
<body>

    <%
        if (session.getAttribute("currentUser") == null) {
            response.sendRedirect("../index.jsp");
        }
    %>

    <c:if test="${currentUser.role == 1}">
        <% response.sendRedirect("../teacher/index.jsp"); %>
    </c:if>
    <c:if test="${currentUser.role == 2}">
        <% response.sendRedirect("../student/index.jsp"); %>
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
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">用户管理 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="useradd.jsp">添加用户</a></li>
                            <li><a href="user.jsp">所有用户</a></li>
                            <li><a href="userimport.jsp">用户批量导入</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">公告管理 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="notesadd.jsp">添加公告</a></li>
                            <li><a href="notesmanage.jsp">公告管理</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">课程管理 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="courceadd.jsp">添加课程</a></li>
                            <li><a href="cource.jsp">课程管理</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">教室管理 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="classroomadd.jsp">添加教室</a></li>
                            <li><a href="classroom.jsp">教室管理</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">学生信息管理 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="scource.jsp">学生选课管理</a></li>
                            <li><a href="score.jsp">学生成绩管理</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a>欢迎您：${currentUser.name}！</a></li>
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

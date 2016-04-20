<%--
  Created by IntelliJ IDEA.
  User: ttop5
  Date: 16-4-22
  Time: 下午8:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="base.jsp"%>
<html>
<head>
    <title></title>
</head>
<body>

    <div class="container">
        <h5><b>当前位置</b>：学生信息管理 > 学生选课管理</h5>
        <hr>
        <div>
            <% AdminDAO adminDAO = new AdminDAO();%>
            <%=adminDAO.getScource()%>
        </div>
    </div>

</body>
</html>

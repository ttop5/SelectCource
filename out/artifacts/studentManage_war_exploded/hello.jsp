<%--
  Created by IntelliJ IDEA.
  User: ttop5
  Date: 15-9-10
  Time: 下午4:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<%
  if (session.getAttribute("currentUser") == null) {
    response.sendRedirect("index.jsp");
  }
%>
  <h1>Hello, welcome to SDUT sdudentManage!</h1>
</body>
</html>

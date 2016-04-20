<%@ page import="lib.Dao.StudentDAO" %>
<%--
  Created by IntelliJ IDEA.
  User: ttop5
  Date: 16-4-21
  Time: 下午6:50
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
    <h5><b>当前位置</b>：公告</h5>
    <hr>
    <% StudentDAO studentDAO = new StudentDAO();%>
    <%=studentDAO.getNotes()%>
  </div>

</body>
</html>

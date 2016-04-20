<%--
  Created by IntelliJ IDEA.
  User: ttop5
  Date: 16-4-24
  Time: 上午9:08
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
    <h5><b>当前位置</b>：学生成绩管理 > 学生成绩管理</h5>
    <hr>
    <div>
      <% AdminDAO adminDao = new AdminDAO();%>
      <%=adminDao.getScore()%>
    </div>
  </div>

</body>
</html>

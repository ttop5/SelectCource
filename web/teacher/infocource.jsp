<%--
  Created by IntelliJ IDEA.
  User: ttop5
  Date: 16-4-24
  Time: 下午10:48
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
    <h5><b>当前位置</b>：课程查询 > 课程查询</h5>
    <hr>
    <div>
      <% TeacherDAO teacherDAO = new TeacherDAO();%>
      <%=teacherDAO.getCource()%>
    </div>
  </div>

</body>
</html>

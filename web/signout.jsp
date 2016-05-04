<%--
  Created by IntelliJ IDEA.
  User: ttop5
  Date: 16-4-19
  Time: 下午4:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link href="static/css/signout.css" rel="stylesheet">
</head>
<br>
  <%
    session.invalidate();
  %>

  <p>
    ：）您已成功注销，正在跳转至登陆页面！</br></br>
    ......
  </p>

  <%
    response.setHeader("refresh","1;url=index.jsp");
  %>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: ttop5
  Date: 15-9-14
  Time: 下午11:12
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
  <h5><b>当前位置</b>：用户管理 > 用户批量导入</h5>
  <hr>
  <div id="userimport">
    <br>
    <p>请下载模板按要求填写后导入</p><br>
    1.<br/>
    <a href="../../ImportUser.xls">模板下载</a>
    <br/><br/><br/>
    2.<input type="file"/>
    <br/>
    <input type="submit" value="导入"/>
  </div>
</div>

</body>
</html>

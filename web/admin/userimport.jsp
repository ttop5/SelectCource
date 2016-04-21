<%--
  Created by IntelliJ IDEA.
  User: ttop5
  Date: 16-4-24
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
    1.下载模板文件
    <br/>
    <a class="btn btn-success" href="files/ImportUser.xls">下载模板</a>
    <br/><br/><br/>
    2.用户导入信息
    <input class="btn btn-default" type="file"/>
    <br/>
    <button type="submit" class="btn btn-primary">导入文件</button>
  </div>
</div>

</body>
</html>

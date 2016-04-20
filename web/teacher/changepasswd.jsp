<%--
  Created by IntelliJ IDEA.
  User: ttop5
  Date: 16-4-24
  Time: 上午8:29
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
    <h5><b>当前位置</b>：个人信息 > 密码修改</h5>
    <hr>
    <div class="changepasswd">
      <form action="../changepasswd" method="post">
        <div>
          <label style="padding-left: 15px">旧密码</label>
          <input type="text" name="old_password"/>
        </div>
        <div>
          <label style="padding-left: 15px">新密码</label>
          <input type="text" name="new_password"/>
        </div>
        <div>
          <label>确认密码</label>
          <input type="text" name="new_password"/>
        </div>
        <div style="padding-top: 15px">
          <button type="submit" class="btn btn-primary">添加</button>
          <button type="reset" class="btn btn-warning">重置</button>
        </div>
      </form>
    </div>
  </div>

</body>
</html>

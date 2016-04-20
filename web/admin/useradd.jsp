<%--
  Created by IntelliJ IDEA.
  User: ttop5
  Date: 16-4-23
  Time: 下午5:00
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
        <h5><b>当前位置</b>：用户管理 > 添加用户</h5>
        <hr>
        <div class="useradd">
            <form action="../useradd" method="post">
                <div>
                    <label>学号</label>
                    <input type="text" name="school_num"/>
                </div>
                <div>
                    <label>姓名</label>
                    <input type="text" name="name"/>
                </div>
                <div>
                    <label>年级</label>
                    <input type="text" name="grade"/>
                </div>
                <div>
                    <label>学院</label>
                    <input type="text" name="school"/>
                </div>
                <div>
                    <label>专业</label>
                    <input type="text" name="major"/>
                </div>
                <%--<div>--%>
                    <%--<label>班级</label>--%>
                    <%--<input type="text" name="class"/>--%>
                <%--</div>--%>
                <div>
                    <label>邮箱</label>
                    <input type="text" name="email"/>
                </div>
                <div>
                    <label>密码</label>
                    <input type="password" name="password"/>
                </div>
                <div>
                    <label>角色</label>
                    <input type="text" name="role"/>
                </div>
                <hr>
                <div>
                    <label>性别</label>
                    <input type="text" name="sex"/>
                </div>
                <div>
                    <label style="padding-left: 6px">QQ</label>
                    <input type="text" name="qq"/>
                </div>
                <div>
                    <label>电话</label>
                    <input type="text" name="phone"/>
                </div>
                <div>
                    <label>住址</label>
                    <input type="text" name="adress"/>
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

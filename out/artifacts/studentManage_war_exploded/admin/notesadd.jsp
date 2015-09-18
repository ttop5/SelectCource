<%--
  Created by IntelliJ IDEA.
  User: ttop5
  Date: 15-9-14
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
    <h5><b>当前位置</b>：公告管理 > 添加公告</h5>
    <hr>
    <div id="notesadd">
        <br>
        <form  method="post">
            <table>
                <tr>
                    <tb>标题 </tb>
                    <tb><input type="text" size="35" name="title"/></tb>
                </tr>
                <br/><br/>
                <tr>
                    <tb>开始 </tb>
                    <tb><input type="date" name="start_time"/></tb>
                </tr>
                <br/><br/>
                <tr>
                    <tb>结束 </tb>
                    <tb><input type="date" name="stop_time"/></tb>
                </tr>
                <br/><br/>
                <tr>
                    <tb>公告 </tb>
                    <tb><textarea rows="12" cols="70" name="noted"></textarea></tb>
                </tr>
                <br/><br/>
                <tr>
                    &nbsp;&nbsp;
                    <tb><input type="submit" value="添加"/></tb>
                    &nbsp;&nbsp;
                    <tb><input type="reset" value="重置"></tb>
                </tr>
            </table>
        </form>
    </div>
</div>

</body>
</html>

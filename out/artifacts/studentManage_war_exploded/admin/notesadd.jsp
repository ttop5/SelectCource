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
            <form  action="../notesadd" method="post">
                <div>
                    <label>标题</label>
                    <input type="text" placeholder="Title" name="title" size="26px"/>
                </div>
                <div>
                    <label>开始</label>
                    <input type="datetime" placeholder="xxxx-xx-xx" name="start_time"/>
                </div>
                <div>
                    <label>结束</label>
                    <input type="datetime" placeholder="xxxx-xx-xx" name="stop_time"/>
                </div>
                <div>
                    <label>内容</label>
                    <textarea rows="15" cols="75" name="description"></textarea>
                </div>
                <br>
                <button type="submit" class="btn btn-default">添加</button>
                <button type="reset" class="btn btn-default">重置</button>
            </form>
        </div>
</div>

</body>
</html>

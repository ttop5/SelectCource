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
    <h5><b>当前位置</b>：公告管理 > 添加公告</h5>
    <hr>
        <div class="notesadd">
            <form  action="../notesadd" method="post">
                <div>
                    <label style="padding-left: 28px">标题</label>
                    <input type="text" placeholder="Title" name="title" size="26px"/>
                </div>
                <div>
                    <label style="padding-top: 6px">开始时间</label>
                    <input type="datetime" placeholder="如：2015-01-01" name="start_time"/>
                </div>
                <div>
                    <label style="padding-top: 6px">结束时间</label>
                    <input type="datetime" placeholder="如：2015-01-01" name="stop_time"/>
                </div>
                <div>
                    <label>公告内容</label>
                    <textarea rows="15" cols="75" name="description"></textarea>
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

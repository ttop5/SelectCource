<%--
  Created by IntelliJ IDEA.
  User: ttop5
  Date: 16-4-22
  Time: 上午10:50
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
        <h5><b>当前位置</b>：课程管理 > 添加课程</h5>
        <hr>
        <div class="classroomadd">
           <form action="../classroomadd" method="post">
               <div>
                   <label>教室名称</label>
                   <input type="text" name="location" placeholder="如： 9#105"/>
               </div>
               <div>
                   <label>容纳人数</label>
                   <input type="text" name="capacity" placeholder="如：80"/>
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

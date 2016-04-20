<%--
  Created by IntelliJ IDEA.
  User: ttop5
  Date: 16-4-18
  Time: 下午2:39
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
    <div class="courceadd">
      <form  action="../courceadd" method="post">
        <div>
          <label>课程名称</label>
          <input type="text" name="cource_name "/>
        </div>
        <div>
          <label id="credit">学分</label>
          <input type="text" placeholder="如：1.5" name="credit"/>
        </div>
        <div>
          <label>任课教师</label>
          <input type="text" name="teacher"/>
        </div>
        <div>
          <label>上课时间</label>
          <input type="text" placeholder="如：周三7,8节；周五3,4节；{10-15周}" name="shooltime"/>
        </div>
        <div>
          <label>上课地点</label>
          <input type="text" placeholder="如：5#305" name="classroom"/>
        </div>
        <br>
        <button type="submit" class="btn btn-primary">添加</button>
        <button type="reset" class="btn btn-warning">重置</button>
      </form>
    </div>
  </div>

</body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
   <title>my JSP 'name.jsp' starting page</title>
  </head>
  
  <body>
    <center>
    <%--html页面修改可以不用重新部署 --%>
     <form action="./name" method="post">
      请输入姓名:<input type="text" name="name" value="陈梓函">
      <input type="submit" name="submit" value="提交">
     </form>
    </center>
  </body>
</html>

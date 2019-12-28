<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>

<html>
  <head>
    <title>My JSP 'add.jsp' starting page</title>
  </head>
  
  <body background="../image/trim.jpg">
  <center>
  <h3>
    <form action="add1.jsp" method="post">
     <table border="1" cellspace="0">
     <tr>
      <td style="font-weight:bold">姓名</td>
      <td><input type="text" name="name"></td>
     </tr>
     <tr>
      <td style="font-weight:bold">年龄</td>
      <td><input type="text" name="age"></td>
     </tr>
     <tr>
      <td style="font-weight:bold">性别</td>
      <td><input type="radio" name="sex" value="男" checked="checked">男
      <input type="radio" name="sex" value="女">女
      </td>
     </tr>
     <tr>
      <td colspan="2" align="center"><input type="submit" name="submit" value="添加"></td>
     </tr>
     </table>
    </form>
    <a href="http://localhost:8080/MySQL/stu_manager_sys/menu.jsp">返回</a>
 <h3>
    </center>
  </body>
</html>

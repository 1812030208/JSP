<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'menu_updateStu.jsp' starting page</title>
  </head>
  
  <body background="../image/m.jpg">
   <center>
    <form action="input.jsp" method="post">
     <table border="1" 	cellspace="0">
      <tr>
       <td>id</td>
       <td><input type="text" name="id"></td>
      </tr>
      <tr>
      <td colspan="2" align="center"><input type="submit" name="submit" value="确认"></td>
      </tr>
     </table>
    </form>
    <a href="http://localhost:8080/MySQL/stu_manager_sys/menu.jsp">回到首页</a>
   </center>
  </body>
</html>

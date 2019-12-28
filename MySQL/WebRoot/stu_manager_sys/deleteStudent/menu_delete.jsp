<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head> 
    <title>My JSP 'menu_delete.jsp' starting page</title>
  </head>
  
  <body background="../image/reba.jpg" background-size="contain">
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

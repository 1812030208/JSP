<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'input.jsp' starting page</title>
  </head>
  
  <body background="../image/group.jpeg">
    <center>
     <form action="searchStudent.jsp" method="post">
      <table>
      <tr>
      <td>查找id</td>
      <td>
       <input type="text" name="id">
       </td>
      </tr>
      <tr>
      <td colspan="2" align="center">
       <input type="submit" name="submit" value="查找">
      </td>
      </tr>
     </table>
     </form>
     <a href="http://localhost:8080/MySQL/stu_manager_sys/menu.jsp">返回</a>
    </center>
  </body>
</html>

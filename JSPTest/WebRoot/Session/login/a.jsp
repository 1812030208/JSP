<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>my jsp 'a.jsp' page</title>
  </head>
  
  <body>
  <center>
    <form action="b.jsp" method="get">
     <table border="1" cellspace="0">
       <tr>
        <td>用户名</td>
        <td><input type="text" name="username"></td>
       </tr>
       <tr>
        <td>密码</td>
        <td><input type="text" name="password"></td>
       </tr>
       <tr>
        <td colspan="2" align="center">
         <input type="submit" name="submit" value="登陆">
        </td>
     </table>
    </form>
   </center>
  </body>
</html>

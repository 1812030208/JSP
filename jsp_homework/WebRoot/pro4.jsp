<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>  
    <title>My JSP 'pro4.jsp' starting page</title>
  </head>
  
  <body>
   <center>
    <img alt="点击图片" src="./check" onclick="this.src='./check?'+new Date().getTime();">
   </center>
    <form action="./login" method="get">
    <center>
     
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
       <td>验证码</td>
       <td><input type="text" name="check"></td>
      </tr>
      <tr>
       <td colspan="2" align="center"><input type="submit" name="submit" value="提交"></td>
      
      </tr>
     </table>
     </center>
    </form>
  </body>
</html>

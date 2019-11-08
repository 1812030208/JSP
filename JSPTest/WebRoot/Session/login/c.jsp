<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>my jsp 'c.jsp' starting page</title>
  </head>
  
  <body>
     <center>
    <form action="d.jsp" method="get">
     <table border="1" cellspace="0"><%--边框，间距 --%>
       <tr>
        <td>旧密码</td>
        <td><input type="text" name="oldpassword"></td>
       </tr>
       <tr>
        <td>新密码</td>
        <td><input type="text" name="newpassword"></td>
       </tr>
       <tr>
        <td colspan="2" align="center"> <%--colspan是 表单中<td>的横向通栏,即跨列，此行的一列
              相当于上面一行的两列，align对齐，对准 --%>
         <input type="submit" name="submit" value="修改">
        </td>
     </table>
    </form>
   </center>
  </body>
</html>



<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'login.jsp' starting page</title>
  </head>
  
  <body>
     <center>
     <%
      Cookie c[]=request.getCookies();
      if(c[0].getName().equals("czh")&&c[0].getValue().equals("123")){
      %>
      <jsp:forward page="success.jsp">
       <jsp:param value="<%=c[0].getName() %>" name="username"/>
      </jsp:forward><!-- 跳转 -->
      <% 
      }
      %>
     <form action="cookie.jsp" method="get">
      <table border="1" cellspace="0">
      <tr>
       <td>用户名</td>
       <td><input type="text" name="username" ></td>
      </tr>
      <tr>
       <td>密码</td>
       <td><input type="text" name="password"></td>
      </tr>
      <tr>
       <td colspan="2" align="center">
       <input type="submit" name="submit" value="登陆">
       </td>
      </tr>
     </table>
     </form>
    </center>
  </body>
</html>

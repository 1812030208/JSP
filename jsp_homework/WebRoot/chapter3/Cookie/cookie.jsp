<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'cookie.jsp' starting page</title>
  </head>
  
  <body>
   <center>
   <h1>
    <%
     String username=request.getParameter("username");
     String password=request.getParameter("password");
     if(username.equals("czh")&&password.equals("123")){
     Cookie cookie=new Cookie(username,password);
     cookie.setMaxAge(100);
     response.addCookie(cookie);
     %>
     <table border="1" cellspace="0">
      <th>name</th><th>value</th>
      <%
       Cookie cookies[]=request.getCookies();
       out.print("cookies[]的长度为："+cookies.length);
       for(int i=0;i<cookies.length;i++){
       %>
        <tr>
         <td><%=cookies[i].getName() %></td>
         <td><%=cookies[i].getValue() %></td>
        </tr>
       <%} %>
     </table>
     <% 
     }
     else{
     out.print("登陆失败！");
     }
     
     %><br>
     <a href="cookie_login.jsp">返回登陆界面</a>
     </h1>
     </center>
  </body>
</html>

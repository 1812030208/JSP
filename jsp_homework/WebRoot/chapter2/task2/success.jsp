<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'success.jsp' starting page</title>
  </head>
  
  <body>
    <center>
     <h1>
      <%
       String password=request.getParameter("password");
       String password1=request.getParameter("password1");
       if(!password.equals(password1)){
       out.print("两次输入密码不一致!");%>
       <a href="task2.jsp">请重新输入</a>
       <% 
       }
       else{
       out.print("登陆成功!");
       }
       %>
     </h1>
    </center>
  </body>
</html>

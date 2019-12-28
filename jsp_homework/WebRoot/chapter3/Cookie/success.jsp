<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'sucess.jsp' starting page</title>
  </head>
  
  <body>
  <center>
    <h1>
       <%
       Cookie[] c=request.getCookies();
       out.print(request.getParameter("username")+",欢迎您！");
        %> 
    </h1>
    </center>
  </body>
</html>

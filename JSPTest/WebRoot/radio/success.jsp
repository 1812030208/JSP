<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>my jsp 'post.jsp' start page</title>
  </head>
  
  <body>
    <center>
       登陆成功，欢迎您，<%=request.getParameter("User")%>!
    </center>
  </body>
</html>

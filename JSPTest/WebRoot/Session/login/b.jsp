<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>my jsp 'b.jsp' page</title>
  </head>
  
  <body>
    <center>
    <%--先将用户名和密码保存在session中 --%>
      <%
       String username=request.getParameter("username");
       String password=request.getParameter("password");
       session.setAttribute("username", username);//用session保存用户名和密码
       session.setAttribute("password", password);
       %>
       <%=session.getAttribute("username") %>,欢迎你，请修改你的初始密码！<br>
       <a href="c.jsp">修改密码</a>  <%--href链接 --%>
    </center>
  </body>
</html>

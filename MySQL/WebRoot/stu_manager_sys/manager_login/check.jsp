<%@ page language="java" import="java.util.*,my.bean.*,my.dao.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'check.jsp' starting page</title>
  </head>
  
  <body>
  <center>
     <jsp:useBean id="mg" class="my.bean.Manager"></jsp:useBean>
    <jsp:useBean id="managerDao" class="my.dao.ManagerDao"></jsp:useBean>
    <%
     request.setCharacterEncoding("UTF-8");
     String username=request.getParameter("username");
     String password=request.getParameter("password");
     mg.setUsername(username);
     mg.setPassword(password);
     if(managerDao.login(mg)){
     %>
     <h1>登陆成功！</h1>
     <jsp:forward page="../menu.jsp">
      <jsp:param value="<%=username %>" name="username"/>
     </jsp:forward>
     <%
     }
     else{
     %>
     <h1>登陆失败！</h1><br>
     <a href="login.jsp">重新登陆</a>
     <%
     }
      %>
   </center>
  </body>
</html>

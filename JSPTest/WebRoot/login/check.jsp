<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>my JSP 'success.jsp' start page</title>
  </head>
  
  <body>
    <%
      String username=request.getParameter("username");
      String password=request.getParameter("password");
      if(username.equals("czh")&&password.equals("123")){ //这一步以后用数据库
     %>
       <jsp:forward page="success.jsp">
         <jsp:param value="<%=username %>" name="username"/>
       </jsp:forward>
     <%
       }else{
     %>
       <jsp:forward page="login.jsp">
       <%--name相当于变量名，value相当于变量的值，jsp文件之间传递参数时就利用name区分变量--%>
         <jsp:param value="Invalid username or password,please enter again!" name="info"/>
       </jsp:forward>
     <%
       }
      %>
  </body>
</html>

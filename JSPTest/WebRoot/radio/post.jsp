<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
     <title>my jsp 'sucess.jsp' start page</title>
  </head>
  
  <body>
    <%
       String username=request.getParameter("User");
       String password=request.getParameter("pwd");
       if(username.equals("czh")&&password.equals("123")){
     %>
      <jsp:forward page="success.jsp">
       <jsp:param value="<%=username %>" name="User"/>
      </jsp:forward>
     <%
       }
       else{
      %>
      <jsp:forward page="radio.jsp">
          <jsp:param value="Invalid username or password,please input again" name="info"/>
      </jsp:forward>
      <%
      }
       %>
  </body>
</html>

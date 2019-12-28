<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'display.jsp' starting page</title>  
  </head>
  
  <body>
    <center>
     <%
     /*
      问题：要使当前会话时间维持1小时，应在 setMaxInactiveInterval() 中填多少？
      解答：3600 
   setMaxInactiveInterval(int i)   i的单位是秒!!!。
      如果设置的值为零或负数，则表示会话将永远不会超时。常用于设置当前会话时间。
     
     */
      session.setMaxInactiveInterval(100);//设置session的存活时间为100s,负值表示永不过期
      String username=request.getParameter("username");
      String password=request.getParameter("password");
      session.setAttribute("username", username);
      session.setAttribute("password", password);
      %>
      用户名:<%=session.getAttribute("username") %><br>
      密码:<%=session.getAttribute("password") %>
    </center>
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>my jsp 'd.jsp' starting page</title>
  </head>
  
  <body>
   <center>
    <%
      String oldpassword=request.getParameter("oldpassword");
      String newpassword=request.getParameter("newpassword");
      String password=(String)session.getAttribute("password");//老密码储存在session中
      if(password.equals(oldpassword)){
        session.setAttribute("password", newpassword);
        out.print("修改成功！");
      }else{
        out.print("旧密码输入错误！请<a href='c.jsp'>重新输入</a>");//旧密码输入错误，跳回c.jsp重新输入
      }
     %>
    </center>
  </body>
</html>

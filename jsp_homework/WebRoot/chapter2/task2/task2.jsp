<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>  
    <title>My JSP 'task2.jsp' starting page</title>
  </head>
  
  <body>
   <form action="success.jsp" method="get">
    <div>
    *昵称:<input type="text" name="nickname" size="20"><br><br>
    (昵称将在CSDN全站显示，2~20个字符，支持中文，英文，数字，"_"，".")<br>
    *密码:<input type="text" name="password"><br><br>
    (为了你的安全，建议使用字母+数字等多种不同类型的组合，且长度大于5位)<br>
  *再次输入密码：<input type="text" name="password1"><br><br>
  (确保您记住密码。)<br><br>
    *注册条款：<input type="checkbox" name="check" value="ON">我已仔细阅读并接受<a href="csdn.jsp">CSDN注册条款</a>  <%--href链接 --%>
    <br><br>
    <input type="submit" name="submit" value="登陆">
    
   </div>
   </form>
  </body>
</html>

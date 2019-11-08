<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>my JSP 'Verification.jsp' starting page</title>
  </head>
  
  <body>
  <%--可以点击图片就新生成一个验证码k --%>
    <img alt="点击图片" src="./image" onclick="this.src='./image?'+new Date().getTime();">
  </body>
</html>

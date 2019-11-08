<%--page指令errorPage属性，指定页面出错时将转向的错误处理页面，此页面的isErrorPage属性默认为false --%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
contentType="text/html; charset=gb2312" errorPage="error.jsp"%>

<html>
  <head>
    <title>JSP基本语法</title>
  </head>
  
  <body>
    <h1>page指令errorPage属性示例页面</h1>
    <%
     String varStr="It can't be";
     //下面的代码将引发异常，转向errorPage属性指定的页面
     int x=Integer.parseInt(varStr);
     %>
  </body>
</html>

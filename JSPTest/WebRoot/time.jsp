<%@ page language="java" import="java.util.Date" contentType="text/html; charset=gb2312" pageEncoding="UTF-8" %>

<html>
  <head>
    <title>JSP基本语法</title>
  </head>
  
  <body>
    <h1>page指令示例页面</h1>
    <%
      //Date类由page指令import属性导入，可直接构造其对象
      Date current=new Date();
      //out是JSP的一个内部对象，print方法用于向客户端输出数据
      out.print("当前时间是："+current);
     %>
  </body>
</html>

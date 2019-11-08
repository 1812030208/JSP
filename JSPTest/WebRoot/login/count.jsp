<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>my JSP 'count.jsp' start page</title>
  </head>
  
  <body>
    <%--除非关闭服务器，否则count会一直存储累加访问量，直到服务器关闭，
           所以企业中会定时进行数据库备份，防止发生意外不至于丢失全部数据！！！
     --%>
    <%!
    //声明里面的变量都是全局变量！！！而无叹号时里面的都是局部变量
       int count=0;
     %>
     
     <%
        int num=0;
     //Scriplet里面如果定义变量全部都是局部变量！！！
      //count++;
      //out.print("您是第"+count+"位访问的用户！");
     %>
     <%--连续访问时声明中的变量递增，而Scriptlet中的变量不变 --%>
         声明中的变量为：<%=count++ %>
     Scriptlet中的变量为：<%=num++ %>
  </body>
</html>

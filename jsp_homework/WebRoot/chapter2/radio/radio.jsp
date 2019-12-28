<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
     <title>request</title>
  </head>
  
  <body>
   <center>
    <div>
      <%
       String information=request.getParameter("info");
       if(information==null){
        out.print("请输入用户名和密码");
       }
       else{
        out.print(information);
       }
       %>
    </div>
     <form action="post.jsp" method="get">
       <p align="center">用户登录
       <p align="center">
       <%--在html代码中每输入一个转义字符&nbsp就表示一个空格，输入十个&nbsp，页面中就显示10个空格位置。 --%>
         用户名：<input type="text" name="User" size="20">&nbsp;&nbsp;&nbsp;&nbsp;
         密码：<input type="password" name="pwd" size="20"><br><br>
         <%---radio代表单选框,checkbox代表复选框 --%>
     浏览器类型：<input type="radio" name="radio" value="ie" checked>IE
     &nbsp;&nbsp;
     <input type="radio" name="radio" value="ns">Netscape<br>
     资料选项：
     <input type="checkbox" name="check1" value="ON" checked>标题
     <input type="checkbox" name="check2" value="ON">详细
      <input type="hidden" name="hidden" value="transPara">
      </p><p align="center">
      <input type="submit" value="提交">
      <input type="reset" value="全部重写"></p>
     </form>
    </center>
  </body>
<html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <%--title为标题 --%>
    <title>My JSP 'input.jsp' starting page</title>
  </head>
  
  <body>
    <%--method分为get和post --%>
    <%--action 就是提交的地址。 --%>
    <form action="",method="get">
        请输入一个数：<input type="text" name="num">
        <input type="submit" value="提交" name="submit">
    </form>
    <%--<hr>为水平线 --%>
    <hr>
    <%--include指令用于在当前JSP页面中指令所在位置将指令指定的资源内容在编译时包含进来，静态包含 --%>
    <%--input接收数据，传到result中处理 --%>
    <%@include file="result.jsp" %>
    <%--让提交地址为空，然后利用include将result包含进来 --%>
  </body>
</html>

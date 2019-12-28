<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
  <head>
    <title>My JSP 'test.jsp' starting page</title>
  </head>
  
  <body>
  <h1>
  <center>
    <c:out value="${4+6} "></c:out><br><!-- 如果不用el表达式，则会原样输出 -->
    <c:set var="num" value="5"></c:set>
    <c:out value="${num }"></c:out><br>
    <hr>
   <jsp:useBean id="stu" class="my.bean.Student"></jsp:useBean>
   <c:set value="admin" target="${stu }" property="name"></c:set>
   <c:set value="22" target="${stu }" property="age"></c:set>
  姓名：<c:out value="${stu.name }"></c:out><br>
  年龄：<c:out value="${stu.age }"></c:out><br>
  <c:set value="${80 }" var="score"></c:set>
  <c:if test="${score>=60 }">
   恭喜你，没挂科！<br>
  </c:if>
  <%
   application.setAttribute("value", 2);
   session.setAttribute("value", 1);
   %>
   <!--el表达式里是字符串常量，被输出了 -->
   <c:out value="${'hbrtjek '}">
    czh
   </c:out>
   <br>
   <!--因为el表达式里面只能是常量或表达式，所以此时value找不到值，输出默认值czh_default -->
   <c:out value="${hbrtjek }">
    czh_default
   </c:out>
   </center>
  </h1>
  </body>
</html>
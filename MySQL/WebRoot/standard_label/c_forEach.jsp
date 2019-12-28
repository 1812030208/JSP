<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
  <head>
    <title>My JSP 'c_forEach.jsp' starting page</title>
  </head>
  
  <body>
    <%
     String name[]={"Tom","Kobe","Yao","KD"};
     request.setAttribute("name", name);
     %>
    <center>
       <c:forEach items="${name }" var="sb" varStatus="status" begin="1"><%--可以规定起始或结束位置 --%>
      第${status.count }次循环，输出:${sb }<br>
     </c:forEach>
     <hr>
     <c:forEach var="n" begin="1" end="4" step="1"><%--输出从1到4，步长为1 --%>
      ${n }&nbsp;&nbsp;&nbsp;&nbsp;
     </c:forEach>
    </center>
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
  <head> 
    <title>My JSP 'c:choose.jsp' starting page</title>
  </head>
  <%--<c:choose>标签与Java switch语句的功能一样，用于在众多选项中做出选择。 --%>
  <body>
    <center>
     <c:set var="score" value="${param.score }"></c:set>
    <c:choose>
     <c:when test="${score>=90 }">优秀</c:when>
     <c:when test="${score>=80 }">良好</c:when>
     <c:when test="${score>=70 }">中等</c:when>
     <c:when test="${score>=60 }">及格</c:when>
     <c:otherwise>不及格</c:otherwise><%--相当于default --%>
    </c:choose>
    <hr>
    <form action="" method="get">
     <table border="1" cellspace="0">
      <tr>
       <td>成绩</td>
       <td><input type="text" name="score"></td>
      </tr>
      <tr>
       <td colspan="2" align="center">
        <input type="submit" name="submit" value="提交">
       </td>
      </tr>
     </table>
    </form>
    </center>
  </body>
</html>

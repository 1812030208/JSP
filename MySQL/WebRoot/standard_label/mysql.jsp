<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%--利用自动补全 --%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<html>
  <head>
    <title>My JSP 'mysql.jsp' starting page</title>
  </head>
  
  <body>
  <center>
    <form action="">
     查询学生的年龄:<input type="text" name="age">
     <input type="submit" name="submit" value="查询">
    </form>
    <hr>
    <c:set var="age" value="${param.age }"></c:set>
    <sql:setDataSource var="mydb" 
    driver="com.mysql.jdbc.Driver"
    user="root"
    password="123"
    url="jdbc:mysql://localhost:3306/studentdb"/><%--注意是jdbc:mysql,用冒号！！！ --%>
    <sql:query var="result" dataSource="${mydb }">
     select id,name,age,sex from student where age=?;
     <sql:param value="${age }"></sql:param>
    </sql:query>
    <c:choose>
     <c:when test="${empty age }">请输入年龄！</c:when>
     <c:when test="${empty result.rows }">没有符合条的记录！</c:when>
     <c:otherwise>
      <table border="1" cellspace="0" width="50%">
       <th>学号</th><th>姓名</th><th>年龄</th><th>性别</th>
       <c:forEach items="${result.rows }" var="row">
        <tr>
         <td><c:out value="${row.id }"></c:out></td>
         <td><c:out value="${row.name }"></c:out></td>
         <td><c:out value="${row.age }"></c:out></td>
         <td><c:out value="${row.sex }"></c:out></td>
        </tr>
       </c:forEach>
      </table>
     </c:otherwise>
    </c:choose>
  </center>
  </body>
</html>

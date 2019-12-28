<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
  <head>
    <title>My JSP 'c_forTokens.jsp' starting page</title>
  </head>
  <%--forTokens根据指定的分隔符来分隔内容并迭代输出 --%>  
  <body>
    <center>
     <c:forTokens items="a,b,c,d,e" delims="," var="color" begin="0" end="5" varStatus="status">
         索引值是啥：${status.index }
       ${color }&nbsp;&nbsp;&nbsp;&nbsp;<br>
     </c:forTokens>
    </center>
  </body>
</html>

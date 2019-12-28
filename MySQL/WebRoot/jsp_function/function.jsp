<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="jspex" uri="http://czh/el" %> <!-- prefix随便定，前缀即给uri起了个别名 -->
<html>
  <head>
    <title>My JSP 'function.jsp' starting page</title>
  </head>
  
  <body>
   <center>
    <form name="form1"><!-- 没写action，提交到当前页 -->
     x：<input type="text" name="x"><br>
    y；<input type="text" name="y"><br>
    <input type="submit" name="submit" value="计算">
    </form> 
    和：${jspex: add(param.x,param.y)}
   差：${jspex:subtract(param.x,param.y) }
   </center>
  </body>
</html>

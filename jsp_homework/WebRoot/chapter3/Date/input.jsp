<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'input.jsp' starting page</title>
  </head>
  
  <body>
    <center>
     <form action="dispose.jsp" method="get">
      请输入日期（格式：yyyy-mm-dd）
     <input type="text" name="date"><br>
     <input type="submit" name="submit" value="提交">
     </form>
    </center>
  </body>
</html>

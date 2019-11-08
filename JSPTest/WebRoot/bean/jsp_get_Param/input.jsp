<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'input.jsp' starting page</title>
  </head>
  
  <body>
    <center>
     <form action="sample.jsp" method="get">
      <p>姓名：
       <label>
        <input type="text" name="name">
       </label>
      </p>
      <p>年龄：
       <label>
        <input type="text" name="age">
       </label>
      </p>
      <p>
       <label>
        <input type="submit" name="submit" value="提交">
       </label>
       <lable>
        <input type="reset" name="reset" value="重置">
       </lable>
      </p>
     </form>
    </center>
  </body>
</html>

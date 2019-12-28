<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>

<html>
  <head>
    <title>My JSP 'input.jsp' starting page</title>
  </head>
  
  <body>
    <center>
      <form action="calculate.jsp" method="get">
      <table border="1" cellspace="0">
       <tr>
       <td>输入第一个参数:</td><td><input type="text" name="num1"></td>
       </tr>
       <tr>
      <td>输入第二个参数:</td><td><input type="text" name="num2"></td>
      </tr>
      <tr><td colspan="2" align="center">计算方式(1加2减3乘4除5平方6立方)</td></tr>
      <tr><input type="submit" name="submit" value="加"></tr>
      <tr><input type="submit" name="submit" value="减"></tr>
      <tr><input type="submit" name="submit" value="乘"></tr>
      <tr><input type="submit" name="submit" value="除"></tr>
      <tr><input type="submit" name="submit" value="平方"></tr>
      <tr><input type="submit" name="submit" value="立方"></tr>     
      </table>
      </form>
    </center>
  </body>
</html>

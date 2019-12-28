<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>  
    <title>My JSP 'pro2.jsp' starting page</title>
  </head>
  
  <body>
    <center>
      <form action="./pro2" method="get">
        <table border="1" cellspace="0">
      <tr><!-- 行 -->
       <td>输入x</td>
       <td><input type="text" name="x"></td>
      </tr>
      <tr>
       <td>输入y</td>
       <td><input type="text" name="y"></td>
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

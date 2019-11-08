<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'student.jsp' starting page</title>
  </head>
  
  <body>
  <%--通过输入的值来修改对象的值 --%>
    <center>
     <form action="student.jsp" method="get">
      <table border="1" cellspace="0">
      <tr>
      <td>姓名</td>
      <td><input type="text" name="name1"></td><%--第一种方法property="*",组件名要和JavaBean类中的属性名一样才行，例如name,age --%>
      </tr>
      <tr>
      <td>年龄</td>
      <td><input type="text" name="age"></td>
      </tr>
      <tr>
      <td colspan="2" align="center"><input type="submit" name="submit" value=修改"></td>
      </tr>
      </table>
     </form>
    </center>
  </body>
</html>

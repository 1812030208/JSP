<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'EL.jsp' starting page</title>
  </head>
  
  <body>
  <h1>
    ${7+8 }<%--花括号里就是表达式 --%><br>
    ${'山东' }<br>
    ${"对于字符串，双引号和单引号都行" }<br>
    ${5+'100' }<%--输出105，这种情况会自动把数字字符串转化为数字 --%><br>
    \${7+8 }=${7+8 }<br><%--加转义字符让${}变成普通字符 --%>
    ${'${7+9}' }<%--原样输出 --%><br>
    ${5/0 }<br>
    <%
      float x=5.0f,y=0,z;
      z=x/0;  //java中浮点数可以除以0而不会报错
      out.print("z="+z+"<br>");
     %>
     ${'${'}!empty param.add }
     ${!empty param.add }
     <%--
     ${'${'}c }<br>
     ${'${'}'c'<'c' }
     ${'c'<'c' }
      --%>
  </h1>
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'sample.jsp' starting page</title>
  </head>
  
  <body>
    <center>
    <h1>
     <jsp:useBean id="stu" class="bean.Student" scope="session"></jsp:useBean>
     <%-- 
     <jsp:setProperty property="name" name="stu" param="name"/><%--此种方式param的值必须和input.jsp的组件名相同 
     <jsp:setProperty property="age" name="stu" param="age"/> 
     --%>
     <jsp:setProperty property="*" name="stu"/><%--直接获取页面上输入的全部参数 --%>
     学生姓名为：<jsp:getProperty property="name" name="stu"/><br>
     学生年龄为：<jsp:getProperty property="age" name="stu"/>
     </h1>
    </center>
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'student.jsp' starting page</title>
  </head>
  
  <body>
    <center>
    <h1>
     <%--创建Student对象，并修改属性值 --%>
     <jsp:useBean id="s" class="bean.Student" scope="page"></jsp:useBean><%--page是默认值，不写也行 --%>
     <jsp:setProperty property="*" name="s"/>
     <%--"*",表示页面上有对应值的JavaBean中的属性,即页面上输入的所有属性，不是Bean中的所有属性！
         设置对应值要注意：参数名（组件名）要和属性名一样才行 --%>
     <%--param="参数名/组件名"相当于request.getParameter("参数名/组件名") --%>
     <%--此种方式(param)不要求参数名必须和JavaBean类中的属性名一样，但和input.jsp文件中的参数名/组件名要一样 
     而且param方式用来接收参数，如果直接传值要用value--%>
     <jsp:setProperty property="name" name="s" param="name1"/>
     <%--<jsp:setProperty property="age" name="s" param="age1"/> --%>
     <%
      int n=Integer.parseInt(request.getParameter("age"));
      %>
      <%--只能这样传入参数，直接value="<%=Integer.parseInt(request.getParameter("age")) %>"会出错 --%>
      <jsp:setProperty property="age" name="s" value="<%=n %>"/> 
     <jsp:setProperty property="classNo" name="s" value="0103"/><%--0103输出是103 --%>
     姓名：<jsp:getProperty property="name" name="s"/><br>
     年龄：<jsp:getProperty property="age" name="s"/><br>
     学号：<jsp:getProperty property="classNo" name="s"/><br>
     性别：<jsp:getProperty property="sex" name="s"/>
     </h1>
    </center>
  </body>
</html>

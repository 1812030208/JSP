<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" session="true"%>
<%--理解useBean动作的scope作用范围 --%>
<%--applicaton的生命周期是服务器的开启和关闭，所以会看到第一次改过名字后的每次登陆都不会显示陈梓函，而是函宝宝 --%>
<html>
  <head>
    <title>My JSP 'student.jsp' starting page</title>
  </head>
  
  <body>
    <center>
     <h1>
     <%--定义一个student对象 --%>
      <jsp:useBean id="student" class="bean.Student" scope="application"></jsp:useBean>
      学生姓名为：<%=student.getName() %><br>
      <%student.setName("函宝宝"); %>
      <%--水平线 --%>
      <%--用getPropery动作来返回组件的属性值 --%>
      <jsp:getProperty property="classNo" name="student"/><br>
      <jsp:getProperty property="name" name="student"/><br>
      <jsp:getProperty property="age" name="student"/><br>
      <%--不输出boolean型 --%>
      <jsp:getProperty property="sex" name="student"/>
      
      <%--取属性值 --%>
      <%=student.getClassNo() %><br>
      <%=student.getName() %><br>
      <%=student.getAge() %><br>
      <%=student.getSex() %>
      
      <jsp:useBean id="date" scope="session" class="java.util.Date"></jsp:useBean>
      <%=date%><br>
     </h1>
    </center>
  </body>
</html>

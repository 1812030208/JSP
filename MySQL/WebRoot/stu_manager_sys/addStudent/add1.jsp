<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>

<html>
  <head>
    <title>My JSP 'add1.jsp' starting page</title>
  </head>
  
  <body>
  <center>
    <%--调用studentDao.addStudent方法 --%>
    <%request.setCharacterEncoding("UTF-8"); %><%--防止动态中文乱码 --%>
    <jsp:useBean id="student" class="my.bean.Student"></jsp:useBean><%--创建对象student --%>
    <jsp:setProperty property="*" name="student"/><%--?--%>
    <jsp:useBean id="studentDao" class="my.dao.StudentDao"></jsp:useBean>
    <% 
     studentDao.addStudent(student);
     out.print("<script>alert('添加成功');</script>");
     %>
     <%--为什么添加相对路径不行？ --%>
     <a href="http://localhost:8080/MySQL/stu_manager_sys/all_stu_info/all_stu_info.jsp">显示所有学生信息</a><br>
     <a href="http://localhost:8080/MySQL/stu_manager_sys/menu.jsp">回到首页</a>
   </center>
  </body>
</html>

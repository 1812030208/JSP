<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'menu.jsp' starting page</title>
  </head>
  
  <body background="image/ball.jpg" background-size="contain">
   <%
    request.setCharacterEncoding("UTF-8");
    String user=request.getParameter("username");
    if(user!=null){
    %>
       当前用户:<%=user %>
    <%}%>
    <center>
     <h1>学生信息管理系统</h1>
        <h3>请选择操作</h3><br><br>
        <a style="font-weight:bold" href="http://localhost:8080/MySQL/stu_manager_sys/all_stu_info/all_stu_info.jsp">显示学生信息</a>&nbsp&nbsp
        <a style="font-weight:bold" href="http://localhost:8080/MySQL/stu_manager_sys/searchStudent/input.jsp">查询学生信息</a>&nbsp&nbsp
        <a style="font-weight:bold" href="http://localhost:8080/MySQL/stu_manager_sys/addStudent/add.jsp">添加学生信息</a>&nbsp&nbsp
        <a style="font-weight:bold" href="http://localhost:8080/MySQL/stu_manager_sys/updateStudent/menu_updateStu.jsp">修改学生信息</a>&nbsp&nbsp
        <a style="font-weight:bold" href="http://localhost:8080/MySQL/stu_manager_sys/deleteStudent/menu_delete.jsp">删除学生信息</a>&nbsp&nbsp
        <br><br><br>
        <a style="font-weight:bold" href="http://localhost:8080/MySQL/stu_manager_sys/manager_login/login.jsp">切换用户</a>
    </center>
  </body>
</html>

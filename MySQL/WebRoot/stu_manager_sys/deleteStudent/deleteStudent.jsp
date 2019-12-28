<%@page import="my.bean.Student,my.dao.StudentDao"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'deleteStudent.jsp' starting page</title>
  </head>
  
  <body>
  <center>
    <%
     request.setCharacterEncoding("UTF-8");
     int id=Integer.parseInt(request.getParameter("id"));
     Student student=new Student();
     StudentDao studentDao=new StudentDao();
     int flag=studentDao.deleteStudent(id);
     if(flag!=0){
       out.print("<script>alert('删除成功！');</script>");
     }
     else{
      out.print("<script>alert('查无此人');<script>");
     }
     %>
     <%--为什么相对路径/all_stu_info/all_stu_info.jsp不行？ --%>
     <a href="http://localhost:8080/MySQL/stu_manager_sys/all_stu_info/all_stu_info.jsp">显示所有学生信息</a><br>
     <a href="http://localhost:8080/MySQL/stu_manager_sys/menu.jsp">回到首页</a>
     </center>
  </body>
</html>

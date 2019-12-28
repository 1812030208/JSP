<%@ page language="java" import="java.util.*,my.bean.Student,my.dao.StudentDao" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'updateStudent.jsp' starting page</title>
  </head>
  
  <body>
  <center>
    <%
     request.setCharacterEncoding("UTF-8");
     int id=Integer.parseInt(request.getParameter("id"));//这个id是从input.jsp的form标签中传过来的
     String name=request.getParameter("name");
     int age=Integer.parseInt(request.getParameter("age"));
     String sex=request.getParameter("sex");
     Student student=new Student();
     student.setId(id);
     student.setName(name);
     student.setAge(age);
     student.setSex(sex);
     StudentDao studentDao=new StudentDao();
     int flag=studentDao.updateStudent(student);
     if(flag==0){
      out.print("<h1>查无此人！(update)</h1>");
     }
     else{
      out.print("<h1>修改成功！</h1>");
     }
     %>
     <a href="http://localhost:8080/MySQL/stu_manager_sys/all_stu_info/all_stu_info.jsp">显示所有学生信息</a><br>
     <a href="http://localhost:8080/MySQL/stu_manager_sys/menu.jsp">回到首页</a>
     </center>
  </body>
</html>

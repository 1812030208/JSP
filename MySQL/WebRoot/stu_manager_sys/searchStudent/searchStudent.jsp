<%@ page language="java" import="java.util.*,my.dao.StudentDao,my.bean.Student" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'searchStudent.jsp' starting page</title>
  </head>
  
  <body>
  <center>
  <%
   StudentDao studentDao=new StudentDao();
   request.setCharacterEncoding("UTF-8");//刚开始显示不出来查询的学生是因为动态中文乱码
   int id=Integer.parseInt(request.getParameter("id"));
   Student stu=studentDao.searchStudent(id);//获取要查询的学生的列表
   if (stu==null){
      out.print("<script>alert('查无此人！');<script>");
   }
   else{
   %>
     <table border="1" cellspace="0" width="500">
      <caption>查询学生如下</caption>
      <th>学号</th><th>姓名</th><th>年龄</th><th>性别</th>
       <tr align="center"><%--个元素在各自的框内居中 --%>
        <td><%=stu.getId() %></td>
        <td><%=stu.getName() %></td>
        <td><%=stu.getAge() %></td>
        <td><%=stu.getSex() %></td>
       </tr>
     </table>
     <%
     }
      %>
     <a href="http://localhost:8080/MySQL/stu_manager_sys/menu.jsp">回到首页</a>
    </center>
  </body>
</html>

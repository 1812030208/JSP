<%@ page language="java" import="java.util.*,my.bean.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'input.jsp' starting page</title>
  </head>
  <%--id是主键,用searchStuent()先根据id查找student,再将学生信息传入--%>
  <body>
  <jsp:useBean id="studentDao" class="my.dao.StudentDao"></jsp:useBean>
  <jsp:useBean id="student" class="my.bean.Student"></jsp:useBean>
  <%
   int id=Integer.parseInt(request.getParameter("id"));//这个id是从all_atu_info.jsp传过来的;当是主页面上的修改学生信息功能时，是从menu_updateStu传过来的
   Student stu=studentDao.searchStudent(id);
   %>
  <center>
  <form action="updateStudent.jsp?id=<%=stu.getId() %>" method="post"><%--将id放到form中传过去 --%>
     <table border="1" cellspace="0">
     <caption>修改学生信息</caption>
      <tr>
     <td>姓名</td>
     <td><input type="text" name="name" value="<%=stu.getName()%>"></td>
     </tr>
     <tr>
     <td>年龄</td>
     <td><input type="text" name="age" value="<%=stu.getAge() %>"></td>
     </tr>
     <tr>
      <td>性别</td>
      <td>
      <%
       if(stu.getSex().equals("男")){
       %>
      <input type="radio" name="sex" value="男" checked="checked">男
      <input type="radio" name="sex" value="女">女
      <%
       }
       else{
       %>
       <input type="radio" name="sex" value="男" >男
      <input type="radio" name="sex" value="女" checked="checked">女
       <%
       }
        %>
      </td>
     </tr>
     <tr>
      <td colspan="2" align="center"><input type="submit" name="submit" value="修改"></td>
     </tr>
    </table>
  </form>
  <a href="http://localhost:8080/MySQL/stu_manager_sys/menu.jsp">返回</a>
   </center>
  </body>
</html>

<%@ page language="java" import="java.util.*,my.dao.StudentDao,my.bean.Student" contentType="text/html; charset=UTF-8"%>

<html>
  <head>
    <title>My JSP 'all_stu_info.jsp' starting page</title>
     <script type="text/javascript">
     function del(){
         var msg="您确定要删除吗";
         if(confirm(msg)==true){
            return true;
         }else{
          return false;
         }
     } 
    </script>
  </head>
  
  <body>
  <div style="border:3px solid green;padding:10px;text-align:right;margin-bottom:30px;background:lightblue">
   <a href="http://localhost:8080/MySQL/stu_manager_sys/addStudent/add.jsp">添加学生信息</a>
  </div>
    <%
    StudentDao studentDao=new StudentDao();
     ArrayList<Student> list=studentDao.getAllStudent();
     %>
     <center>
      <table border="1" cellspace="0" width="500">
       <caption>学生信息表</caption><%--定义表格的标题 --%>
       <th>学号</th><th>姓名</th><th>年龄</th><th>性别</th><th>操作</th>
       <%
        for(Student s:list){
        %>
        <tr align="center">
         <td><%=s.getId() %></td>
         <td><%=s.getName() %></td>
         <td><%=s.getAge() %></td>
         <td><%=s.getSex() %></td>
         <td>
         <a href="http://localhost:8080/MySQL/stu_manager_sys/updateStudent/input.jsp?id=<%=s.getId()%>">修改</a>
         <a onclick="javascript:if(del())location='http://localhost:8080/MySQL/stu_manager_sys/deleteStudent/deleteStudent.jsp?id=<%=s.getId()%>';">删除</a>
         </td>
        </tr>
        <%
         }
        %>
      </table>
      <%--当相对路径不好使时，就用绝对路径 --%>
      <a href="http://localhost:8080/MySQL/stu_manager_sys/menu.jsp">回到首页</a>
     </center>
  </body>
</html>

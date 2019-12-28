<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'input.jsp' starting page</title>
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
    <jsp:useBean id="studentDao" class="my.dao.StudentDao"></jsp:useBean>
  <jsp:useBean id="stu" class="my.bean.Student"></jsp:useBean>
  <%
   int id=Integer.parseInt(request.getParameter("id"));//这个id是从all_atu_info.jsp传过来的;当是主页面上的修改学生信息功能时，是从menu_delete传过来的
   stu=studentDao.searchStudent(id);
   if(stu==null){
   %>
   <jsp:forward page="fail.jsp"></jsp:forward>
   <%
   }
   %>
  <center>
  <form action="deleteStudent.jsp?id=<%=stu.getId() %>" method="post"><%--将id放到form中传过去 --%>
     <table border="1" cellspace="0">
     <caption>删除学生信息</caption>
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
      <td><input type="text" name="sex" value="<%=stu.getSex()%>"></td>
     </tr>
     <%-- 
     <tr>
      <td colspan="2" align="center"><input type="submit" name="submit" value="删除"></td>
     </tr> --%>
    </table>
  </form>
  <br>
   <a onclick="javascript:if(del())location='http://localhost:8080/MySQL/stu_manager_sys/deleteStudent/deleteStudent.jsp?id=<%=stu.getId()%>';">删除</a>
  <a href="http://localhost:8080/MySQL/stu_manager_sys/menu.jsp">返回</a>
   </center>
  </body>
</html>

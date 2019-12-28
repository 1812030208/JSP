<%@ page language="java" import="java.util.*,my.bean.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'fenye.jsp' starting page</title>
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
  
  <body background="../image/sea.jpg">
  <div style="border:3px solid green;padding:10px;text-align:right;margin-bottom:30px;background:lightblue">
   <a href="http://localhost:8080/MySQL/stu_manager_sys/addStudent/add.jsp">添加学生信息</a>
  </div>
    <jsp:useBean id="studentDao" class="my.dao.StudentDao"></jsp:useBean>
    <center>
      <table border="2" bordercolor="#FF0000" bgcolor="#CCCCCC" width="500">
         <caption>学生信息表</caption>
         <th>学号</th><th>姓名</th><th>年龄</th><th>性别</th><th>操作</th>
         <%
            int intPageSize;  //一页显示的记录个数
            int intRowCount;  //记录总数
            int intPageCount; //总页数
            int intPage;   //当前页码
            String strPage;  //当前页码的字符串形式
            int i;   //动态数组指针
            int j;    //记录当前页记录的指针
            intPageSize=6;
            strPage=request.getParameter("page");//取代显示页码
            if(strPage==null) //第一次访问
               intPage=1;
            else{
               intPage=Integer.parseInt(strPage);
            }
            
            ArrayList<Student> list=studentDao.getAllStudent();
            intRowCount=list.size();   //获得总记录数
            intPageCount=(intRowCount+intPageSize-1)/intPageSize;  //计算总页数
            if(intPage>intPageCount)
               intPage=intPageCount;
            if(intPage<1)
               intPage=1;
            if(intPageCount>0){
              i=(intPage-1)*intPageSize;//定位到当前页的第一条记录上，eg:第二页的第一条记录（下标）为(2-1)*6=6
              j=0;   //统计当前页记录数
              while(j<intPageSize&&i<intRowCount){//当本页读完或者读完数据库最后一行时结束循环
              %>
              <tr bgcolor="EFEFEF" align="center">
                 <td><%=list.get(i).getId() %></td>
                 <td><%=list.get(i).getName() %></td>
                 <td><%=list.get(i).getAge() %></td>
                 <td><%=list.get(i).getSex() %></td>
                 <td>
                   <a href="http://localhost:8080/MySQL/stu_manager_sys/updateStudent/input.jsp?id=<%=list.get(i).getId()%>">修改</a>
                   <a onclick="javascript:if(del())location='http://localhost:8080/MySQL/stu_manager_sys/deleteStudent/deleteStudent.jsp?id=<%=list.get(i).getId()%>';">删除</a>
                 </td> 
              </tr>
              <%
                j++;
                i++;
              }
            } 
              %>
      </table>
      <hr>
      <div align="center">
       第<%=intPage %>页，共<%=intPageCount %>页
       <%
         if(intPage<intPageCount){
        %>
          <a href="all_stu_info.jsp?page=<%=intPage+1 %>">下一页</a>
        <%} %>
        <%
          if(intPage>1){
         %>
           <a href="all_stu_info.jsp?page=<%=intPage-1 %>">上一页</a>
         <%} %>
      
      </div>
      <a href="http://localhost:8080/MySQL/stu_manager_sys/menu.jsp">回到首页</a>
    </center>
  </body>
</html>

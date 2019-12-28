<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>

<html>
  <head>
    <title>My JSP 'dispose.jsp' starting page</title>
  </head>
  
  <body>
    <center>
    <h1>
      <%
       int yes=0;
       request.setCharacterEncoding("UTF-8");
       String name=request.getParameter("name");
       String sex=request.getParameter("radio");
       String depth=request.getParameter("select");//下拉框
       String select[]=new String[5];
       out.print("欢迎");
       if(depth.equals("1")){
        out.print("信息系的");
       }
       else if(depth.equals("2")){
        out.print("文法系的");
       }
       else{
        out.print("经管系的");
       }
       out.print(name+"!<br>");
       
       if(sex.equals("male")){
       out.print("男<br>");
       }
       else{
        out.print("女<br>");
       }
       out.print("你选择的课程是：<br>");
       String checked[]=request.getParameterValues("check");//获得所有被选中的check
       for(int i=0;i<checked.length;i++){
        out.print(checked[i]+"<br>");
       }
       %>
      </h1>
    </center>
  </body>
</html>

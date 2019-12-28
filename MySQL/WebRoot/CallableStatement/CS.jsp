<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'CS.jsp' starting page</title>
  </head>
  
  <body>
    <%
     Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test?user=root&password=123");
     CallableStatement cs=con.prepareCall("{call getAge(?)}");//sql内嵌过程的调用（相当于调用一个函数）
     cs.setInt(1, 20);//第一个参数的意思是指定数据库里定义的函数的第一个参数
     ResultSet rs=cs.executeQuery();
     while(rs.next()){
           out.print(rs.getInt("id")+"&nbsp&nbsp&nbsp");
           out.print(rs.getString("name")+"&nbsp&nbsp&nbsp");
           out.print(rs.getInt("age")+"<br>");
     }
     rs.close();
     cs.close();
     con.close();
     %>
  </body>
</html>

<%--eg:假如桌面有一个导出的数据库表，如果像导入到数据库中有两种方法
1.直接拖拽到navicat for mysql相应的数据库下
2.如果上面的方法不行，就记事本格式打开桌面上的数据库表，复制里面的代码段，在navicat for mysql中新建查询，粘贴代码，运行
代码中的字符编码可能报错，将utf8mb4改成utf8 --%>

<%@page import="java.sql.DriverManager"%>
<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'mysql.jsp' starting page</title>
  </head>
  
  <body>
    <center>
     <h1>
     <table border="1" cellspace="0" width=500>
      <th>学号</th><th>姓名</th><th>年龄</th>
      <%
       Class.forName("com.mysql.jdbc.Driver");//加载数据库驱动程序
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test?user=root&password=123");//建立与 url中给定的数据库的连接
       Statement stmt=con.createStatement();//创建用于执行普通SQL语句的对象
       ResultSet rs=stmt.executeQuery("select id,name,age from t;");//返回一个结果集
       while(rs.next()){//向后移动记录集游标
       %>
       <tr>
       <td><%=rs.getInt("id") %></td>
       <td><%=rs.getString("name") %></td>
       <td><%=rs.getInt("age") %></td>
       </tr>
       <%
       }
       rs.close();
       stmt.close();
       con.close();
        %>
      </table>
     </h1>
    </center>
  </body>
</html>

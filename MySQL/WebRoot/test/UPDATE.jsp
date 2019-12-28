<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>My JSP 'UPDATE.jsp' starting page</title>
  </head>
  
  <body>
  <%--插入，删除，修改操作见数据库课本P115 --%>
    <%
     Class.forName("com.mysql.jdbc.Driver");//加载数据库驱动程序
     //建立与url中指定的数据库的连接
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test?user=root&password=123");
     Statement stmt=con.createStatement();//创建用于执行普通SQL语句的对象
     //修改语句（UPDATE）
     String sql="UPDATE t SET age=18 WHERE name='陈梓函'";//把陈梓函的年龄修改为18
     stmt.executeUpdate(sql);//执行(insert,delete,update)语句，返回受影响的行数
     out.print("修改成功！<br>");
     String sql1="DELETE FROM t WHERE id=1";//删除id为1的人
     stmt.executeUpdate(sql1);
     out.print("删除成功！<br>");//删除之后id号不会改变，想改只能手动修改
     String sql2="INSERT INTO t(id,name,age) VALUES(1,'啥都不是',3)";//插入
     stmt.execute(sql2);
     out.print("插入成功！<br>");
     String sql3="INSERT INTO t(id,name,age) VALUES(6,'resolution',150)";//id(序号)是手动设置的，不会根据在数据库中的位置而自动改变
     stmt.executeUpdate(sql3);
     out.print("插入成功！<br>");//插入成功之后再执行相同的插入会报错
     
     stmt.executeQuery("select id,name,age from t;");
     ResultSet rs=stmt.getResultSet();
     while(rs.next()){
      out.print(rs.getInt("id")+"&nbsp&nbsp&nbsp");
      out.print(rs.getString("name")+"&nbsp&nbsp&nbsp");
      out.print(rs.getInt("age")+"<br>");
     }
     
     %>
  </body>
</html>

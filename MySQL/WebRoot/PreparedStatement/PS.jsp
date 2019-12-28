<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'PS.jsp' starting page</title>
  </head>
  
  <body>
    <%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test?user=root&password=123");
    String sql="INSERT INTO t(id,name,age) VALUES(?,?,?)";
    PreparedStatement pstm=con.prepareStatement(sql);//预编译
    pstm.setInt(1, 5);//1代表第一个属性，第二个为设置的属性值
    pstm.setString(2, "记叙羊");
    pstm.setInt(3, 50);
    pstm.execute();//返回是否有结果集
    out.print("插入成功！");
    pstm.close();
    con.close();
    %>
  </body>
</html>

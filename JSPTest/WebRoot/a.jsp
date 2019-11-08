<%@page contentType="text/html; charset=UTF-8" %>
<html>
    <head>
      <title>my first page</title>
    </head>
    <body>
    <%--
      table 表征的网页元素是表格。
      table边框为1像素，这个数值越大，边框就越粗。 border--设置或获取绘制对象周围边框的宽度。
      caption 元素定义表格标题。
      caption 标签必须紧随 table 标签之后。您只能对每个表格定义一个标题。通常这个标题会被居中于表格之上。
    --%>
      <table border="1">
       <caption>一串数字</caption>
       <%
       //用户名和密码在conf中的tomcat-users.xml文件中
       //java脚本
       out.print("靡不有初鲜克有终");//会在网页中显示，此时out为对象
       %>
       <br>
       <%
       System.out.print("hello");//控制台输出
       out.println("<tr>");//行
       for(int i=0;i<9;i++){
          out.print("<td>"+i+"</td>");//列
       }
       %>
      </table>
    </body>
</html>

<%@ page language="java" import="java.util.*,bean.Rectangle" pageEncoding="UTF-8"%>

<html>
  <head> 
    <title>My JSP 'rectangle.jsp' starting page</title>
  </head>
  
  <body>
  <center>
  <h1>
  <%--id是创建的对象名 class是包名.类名 --%>
    <jsp:useBean id="r" class="bean.Rectangle" scope="session"></jsp:useBean><%--相当于创建对象 --%>
    <jsp:useBean id="r1" class="bean.Rectangle" scope="session"></jsp:useBean>
    <jsp:setProperty property="height" value="10" name="r"/><%--设置对象r的高为10 --%>
    <jsp:setProperty property="width" value="2" name="r"/>
    <jsp:setProperty property="width" value="5" name="r1"/>
    对象r的高为：<jsp:getProperty property="height" name="r"/><br>
    对象r的宽为：<jsp:getProperty property="width" name="r"/><br>
    对象r的面积为：<%=r.area() %><br>
    对象r的周长为：<%=r.perimeter() %><br>
    对象r1的宽为：<jsp:getProperty property="width" name="r1"/><br>
    <%
     Rectangle r2=new Rectangle();
     r2.setHeight(8);
     %>
     对象r2的高为:<%=r2.getHeight() %><br>
     
    </h1>
    </center>
  </body>
</html>

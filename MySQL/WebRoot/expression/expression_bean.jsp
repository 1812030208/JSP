<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'expression_bean.jsp' starting page</title>
  </head>
  
  <body>
  <jsp:useBean id="stu" class="my.bean.Student"></jsp:useBean>
  <jsp:setProperty property="*" name="stu"/>
  <center>
  本次sessionID是：${pageContext.session.id }<br>
   获取bean的属性：<br>
  姓名：${stu.name }<br>
  年龄：${stu["age"]}
  <hr>
   第一种方法，使用session去取值：<br>
   <%
    session.setAttribute("name", request.getParameter("name"));
    session.setAttribute("age", request.getParameter("age"));
    session.setAttribute("hobby", request.getParameterValues("hobby"));//获取数组用getParameterValues！！！
    %>
    您输入的值是：<br>
    姓名：${sessionScope.name }<br>
    年龄：${sessionScope.age }<br>
    爱好：${sessionScope.hobby[0] }&nbsp&nbsp${sessionScope.hobby[1] }&nbsp&nbsp${sessionScope.hobby[2] }
  <hr>
  第二种方法，用param取值:<br>
  您输入的值是：<br>
    姓名：${param.name }<br>
    年龄：${param.age }<br>
    爱好：${paramValues.hobby[0] }&nbsp&nbsp${paramValues.hobby[1] }&nbsp&nbsp${paramValues.hobby[2] }<%--将请求的参数所有的值作为Srting数组存储的类 --%>
  <hr>
  
   <form action="" method="post"><%--提交给自己 --%>
     姓名：<input type="text" name="name"><br>
  年龄：<input type="text" name="age"><br>
  爱好：<input type="checkbox" name="hobby" value="basketball">篮球
  <input type="checkbox" name="hobby" value="music">音乐
  <input type="checkbox" name="hobby" value="read">阅读<br>
  <input type="submit" name="submit" value="提交">
   </form>
  </center>
  </body>
</html>

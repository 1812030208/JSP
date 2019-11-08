<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
   <title>my jsp 'statistics.jsp' page</title>
  </head>
  
  <body>
    <center>
     <h1>
     <%--session的生命周期是访问网站到关闭与这个网站相关的一切网页(关闭浏览器) --%>
     <%--session是Java的内置对象，所以下面代码放在脚本(此时为scriptlet,局部变量)中放在 --%>
     <%--为什么不能用声明 --%>
      <%
        int i=0;
        Object obj=session.getAttribute("num");
        if(obj==null){
          session.setAttribute("num", String.valueOf(i));
        }
        else{
          i=Integer.parseInt(obj.toString());
          i++;
          session.setAttribute("num", String.valueOf(i));
        }
       %>
       当前的访问人数是：<%=session.getAttribute("num") %>
     </h1>
    </center>
  </body>
</html>

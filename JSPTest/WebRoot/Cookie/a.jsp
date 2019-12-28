<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>my jsp 'a.jsp' starting page</title>
  </head>
  
  <body>
    <center>
     <h1>
      <%
        Cookie cookie=new Cookie("username","admin");
        cookie.setMaxAge(100);//设置Cookie过期时间
        response.addCookie(cookie);//创建新对象并将其添加到 Cookies 集合，注意这里用的是response
        Cookie cookie1=new Cookie("czh","admin");
        cookie1.setMaxAge(100);//设置Cookie过期时间
        response.addCookie(cookie1);
        out.print("成功写入！");
       
       %>
     </h1>
    </center>
  </body>
</html>

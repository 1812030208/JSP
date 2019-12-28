<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<html>
  <head>
    <title>login page</title>
  </head>
  
  <body background="../image/ee.jpg">
    <center>
    <h1>管理员登陆</h1>
      <%--HTML里的FORM是用来创建一个表单，实现与本页或其它页面的数据交互。
      action：设定表单数据提交给哪个文件。method: 设定数据提交方式。
       --%>
      <form action="check.jsp" method="get">
        <table border="1" cellspacing="0">
          <tr><%--行 --%>
              <td>用户名</td><%--列 --%>
              <td><input type="text" name="username"></td>
          </tr>
          <tr>
             <td>密码</td>
             <td><input type="password" name="password"></td>
          </tr>
           <tr>
              <td colspan="2" align="center">
                <input type="submit" name="submit" value="登陆">
              </td>
           </tr>
          </center>
        </table>
      </form>
      <a style="font-weight:bold" href="http://localhost:8080/MySQL/stu_manager_sys/menu.jsp">回到首页</a>
    </center>
  </body>
</html>

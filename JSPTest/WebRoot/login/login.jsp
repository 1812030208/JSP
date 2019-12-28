<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<html>
  <head>
    <title>login page</title>
  </head>
  
  <body>
    <center>
     <div>
      <%
        String info=request.getParameter("info");
        if(info==null)
         out.print("enter your username and password!");//说明check的else未执行，即还未获取参数(未输入)
        else
         out.print(info);
       %>
     </div>
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
        </table>
      </form>
    </center>
  </body>
</html>

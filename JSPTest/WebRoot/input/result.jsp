<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>My JSP 'result.jsp' starting page</title>
  </head>
  
  <body>
    <%--下面是脚本 --%>
    <%--在<%%>里面的代码遵守Java语法 --%>
    <% 
       String s=request.getParameter("num");//获取输入的数字
       double num=0.0;
       if(s==null||s.equals("")){
         out.print("您还没有输入数据");
       }
       else{
         try{
            num=Double.parseDouble(s);
            out.print(Math.sqrt(num));//输出平方根
         }catch(Exception ex){
             out.print("您输入的数据有误");
         }
       }
     %>
  </body>
</html>

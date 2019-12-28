<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'calculate.jsp' starting page</title>
  </head>
  
  <body>
    <center>
    <h1>
      <%
       String num1=request.getParameter("num1");
       String num2=request.getParameter("num2");
       String way=request.getParameter("submit");
       Float n1=Float.valueOf(num1);
       Float n2=Float.valueOf(num2);
       float result,result1;
       if (way.equals("加")){
       //加
       result=n1+n2;
       out.print(result);
       }
       if (way.equals("减")){//减
       result=n1-n2;
       out.print(result);
       }
       if (way.equals("乘")){//乘
       result=n1*n2;
       out.print(result);
       }
       if (way.equals("除")){//除
       result=n1/n2;
       out.print(result);
       }
       if (way.equals("平方")){//平方
       result=n1*n1;
       result1=n2*n2;
       out.print("n1的平方为："+result+"<br>");
       out.print("n2的平方为："+result1);
       }
       if (way.equals("立方")){//立方
        result=n1*n1*n1;
       result1=n2*n2*n2;
       out.print("n1的立方为："+result+"<br>");
       out.print("n2的立方为："+result1);
       }
       %>
       </h1>
    </center>
  </body>
</html>

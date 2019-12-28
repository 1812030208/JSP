<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>my jsp 'b.jsp' starting page</title>
  </head>
  <%--定义表格内的表头单元格。
HTML 表单中有两种类型的单元格：
表头单元格 - 包含表头信息（由 th 元素创建）
标准单元格 - 包含数据（由 td 元素创建）
th 元素内部的文本通常会呈现为居中的粗体文本，而 td 元素内的文本通常是左对齐的普通文本。
示例：
<table border="1">
<tr>
<th>Company</th><th>Address</th>
</tr>
<tr> --%>
  <body>
    <center>
     <table border="1" cellspace="0">
      <th>name</th><th>value</th>
      <%
       Cookie cookies[]=request.getCookies();
       out.print("cookies[]的长度为："+cookies.length);
       for(int i=0;i<cookies.length;i++){
       %>
        <tr>
         <td><%=cookies[i].getName() %></td><%--返回cookie的名称，名称在创建后不能改变 --%>
         <td><%=cookies[i].getValue() %></td><%--获取与cookie关联的值 --%>
        </tr>
       <%} %>
     </table>
     <%--sessionID和cookie的value相等--%>
     <%=session.getId() %><%--返回sessionID --%>
    </center>
  </body>
</html>

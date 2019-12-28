<%@ page language="java" import="java.util.*" import="java.text.*"
	pageEncoding="UTF-8"%>

<html>
<head>
<title>My JSP 'dispose.jsp' starting page</title>
</head>

<body>
    <center><h1>
     
	<%
	//计算今天是开学以来的第几周的第几天
		String date = request.getParameter("date");//输入开学日期
		Date current = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");//固定格式yyyy-MM-dd
		Date pass = sdf.parse(date);
		long passtime = pass.getTime();
		long currenttime = current.getTime();
		long subtract_time = currenttime - passtime;//返回的是毫秒数！
		int day = (int) (subtract_time / 1000 / 60 / 60 / 24);//周数
		int week = day / 7 + 1;
		out.print("这是第" + week + "周第" + (day + 1) % 7 + "天");
	%>
	</h1></center>
</body>
</html>

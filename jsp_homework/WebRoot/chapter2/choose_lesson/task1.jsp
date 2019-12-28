<%@ page language="java" import="java.util.*"  contentType="text/html; charset=UTF-8" %>

<html>
<head>
<title>my jsp 'task.jsp' start page</title>
</head>

<body>
	<form action="dispose.jsp" method="get">
	 <div>
		姓名:<input type="text" name="name" size="20"><br>
		<br> 性别：<input type="radio" name="radio" value="male" checked="checked">男
		&nbsp;&nbsp; <input type="radio" name="radio" value="female">女<br>
		<br> 所在系部： <select name="select">
			<option value="1">信息系</option>
			<option value="2" selected>文法系</option><%--加上selected就会在没选的状态下默认显示这个 --%>
			<option value="3">经管系</option>
		</select><br> 
		<%--列表框 
		<select name="select2" size="3">
			<option value="1">a</option>
			<option value="2" selected>b</option>
			<option value="3">c</option>
		</select> <br> --%>
		<%--id是标签的唯一标识 --%>
		所选课程：<br> <input type="checkbox" name="check"
			value="高等数学" id="1" >高等数学<br> <input type="checkbox" name="check"
			value="大学英语" id="2">大学英语<br> <input type="checkbox" name="check"
			value="JSP程序设计" id="3">JSP程序设计<br> <input type="checkbox" name="check"
			 value="Java程序设计" id="4">Java程序设计<br> <input
			type="checkbox" name="check" value="计算机网络" id="5">计算机网络<br>
		<br> <input type="submit" value="提交"> <input type="reset"
			value="重置">
	</div>
	</form>
</body>
</html>

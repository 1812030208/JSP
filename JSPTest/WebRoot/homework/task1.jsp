<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
  <title>my jsp 'task.jsp' start page</title>
  </head>
  
  <body>
   <div>
     姓名:<input type="text" name="name" size="20"><br><br>
     性别：<input type="radio" name="radio" value="male">男
     &nbsp;&nbsp;
     <input type="radio" name="radio" value="female">女<br><br>
     所在系部：<input type="checkbox" name="check0" value="info"><br>
   所选课程：<br>
        <input type="checkbox" name="check1" value="ON">高等数学<br>
        <input type="checkbox" name="check2" value="ON">大学英语<br>
        <input type="checkbox" name="check3" value="ON">JSP程序设计<br>
        <input type="checkbox" name="check4" value="ON">Java程序设计<br>
        <input type="checkbox" name="check5" value="ON">计算机网络<br><br>
        <input type="submit" value="提交">
        <input type="reset" value="重置">
       </div>
  </body>
</html>

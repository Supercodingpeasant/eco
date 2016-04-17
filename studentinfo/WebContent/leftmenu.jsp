<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <% String users=session.getAttribute("username").toString(); %>
    <% String sname=session.getAttribute("sname").toString(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
<div id="content_left">
<ul>
<li><img src="images/menu.jpg"></li>
<li><a href="myinfo.jsp?username=<%=users %>">我的信息</a></li>
<li><a href="classinfo.jsp?username=<%=users %>">班级信息</a></li>
<li><a href="notice.jsp">短信息</a></li>
<li><a href="schoolnotice.jsp">学院通知</a></li>
<li><a href="view.jsp">我的异议</a></li>
<li><img src="images/menu1.jpg"></li>
<li><a href="grade.jsp?username=<%=users %>">我的成绩</a></li>
<li><a href="course.jsp?username=<%=users %>">我的选课</a></li>
<li><img src="images/menu2.jpg"></li>
<li><a href="stuinfo.jsp">学生信息查询</a></li>
<li><a href="update.jsp">学生信息修改</a></li>
<li><a href="add.jsp">学生信息添加</a></li>
<li><a href="delete.jsp">学生信息删除</a></li>
<li><a href="searchusers.jsp">用户账号查询</a></li>
<li><a href="password.jsp">密码修改</a></li>
<li><img src="images/bottom.PNG"></li>
</ul>
</div>
</body>
</html>
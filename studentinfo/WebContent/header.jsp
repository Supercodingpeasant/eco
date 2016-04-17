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
<div id="header">
<ul id="menu">
<li class=list><a href="main.jsp">首页</a></li>
<li class=list><a href="introduceschool.jsp">校区概况</a></li>
<li class=list><a href="deptintroduce.jsp">系部简介</a></li>
<li class=list><a href="news.jsp">新闻中心</a></li>
<li class=list><a href="index.jsp">安全退出</a></li>
</ul>
<div id="text"><h2><b>江西理工大学</b></h2></div>
<div id="showname">欢迎您&nbsp;<%=users %>&nbsp;<%=sname %>同学！</div>
</div>
</body>
</html>
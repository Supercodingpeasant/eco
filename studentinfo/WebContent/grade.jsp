<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    <% String users=session.getAttribute("username").toString(); %>
    <% String sname=session.getAttribute("sname").toString(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/myinfo.css">
</head>
<body>
<jsp:include page="header.jsp"/> 
<jsp:include page="leftmenu.jsp"/>
<div id="content_right">
<div id="font">我的信息>个人资料</div>
<div id="right_menu">
<ul id="iul">
<li class="cli"><a href="myinfo.jsp?username=<%=users %>">个人资料</a></li>
<li class="cli"><a href="classinfo.jsp?username=<%=users %>">班级信息</a></li>
<li class="cli"><a href="notice.jsp">短信息</a></li>
<li class="cli"><a href="schoolnotice.jsp">通知</a></li>
<li class="cli"><a href="view.jsp">我的异议</a></li>
</ul>
</div>
<div id="line"><hr width="80%" size="1" align="left" color="#1874CD"></div>
<div id="table">
<table width="80%" border="0" cellpadding="0" cellspacing="0">
<tr>
<th>课程名</th>
<th>成绩</th>
</tr>
<%
String username=request.getParameter("username");
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/db_user","root","123456");
PreparedStatement ps=conn.prepareStatement("select cname,grade from SC where sno='"+username+"'");
ResultSet rs=ps.executeQuery();
while(rs.next()){
%>
<tr>
<td><%=rs.getString("cname") %></td>
<td><%=rs.getString("grade") %></td>
</tr>
<%} %>
<%
ps.close();
rs.close();
conn.close();
%>
</table>
</div>
</div>
</body>
</html>
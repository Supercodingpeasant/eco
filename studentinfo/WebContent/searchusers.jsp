<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/stuinfo.css">
</head>
<body>
<jsp:include page="header.jsp"/> 
<jsp:include page="leftmenu.jsp"/>
<div id="content_right">
<table width="80%" border="0" cellpadding="0" cellspacing="0">
<tr>
<td>用户名</td>
<td>密码</td>
<td>姓名</td>
</tr>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/db_user","root","123456");
PreparedStatement ps=conn.prepareStatement("select * from user");
ResultSet rs=ps.executeQuery();
while(rs.next()){
%>
<tr>
<td><%=rs.getString("username") %></td>
<td><%=rs.getString("password") %></td>
<td><%=rs.getString("sname") %></td>
</tr>
<%} %>
<%
rs.close();
ps.close();
conn.close();
%>
</table>
</div>
</body>
</html>
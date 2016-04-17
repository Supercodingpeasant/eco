<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
String user=request.getParameter("username");
String pass=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/db_user","root","123456");
PreparedStatement ps=conn.prepareStatement("select * from user where username=? and password=?");
ps.setString(1, user);
ps.setString(2, pass);
ResultSet rs=ps.executeQuery();
if(rs.next()){ %>
    <%
    String name=rs.getString("sname");
    session.setAttribute("username", user); 
    session.setAttribute("sname", name);
    %>
	<jsp:forward page="main.jsp"/>
<%} else { 
%>
<script language="javascript">
alert("用户名或密码错误");
window.history.go(-1);
</script>
<%
  }
%>
<%
rs.close();
ps.close();
conn.close();
%>
</body>
</html>
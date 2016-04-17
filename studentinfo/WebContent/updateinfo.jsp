<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/add.css">
</head>
<body>
<jsp:include page="header.jsp"/> 
<jsp:include page="leftmenu.jsp"/>
<div id="content_right">
<%
request.setCharacterEncoding("UTF-8");
String sno=request.getParameter("sno");
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/db_user","root","123456");
PreparedStatement ps=conn.prepareStatement("select * from student where sno=?");
ps.setString(1, sno);
ResultSet rs=ps.executeQuery();
if(rs.next()){
%>
<div id="form1">
<form name="form1" action="checkupdate.jsp" method="post">
<table>
<tr>
<td class="text1">&nbsp;</td>
<td><input type="hidden" name="sno" value="<%=rs.getString("sno") %>"></td>
</tr>
<tr>
<td class="text1">姓名：</td>
<td><input type="text" name="sname" value=<%=rs.getString("sname") %>></td>
</tr>
<tr>
<td class="text1">性别：</td>
<td>
<input type="radio" name="sex" class="radioinput" value="男">男
<input type="radio" name="sex" class="radioinput" value="女">女
</td>
</tr>
<tr>
<td class="text1">年龄：</td>
<td><input type="text" name="age" value=<%=rs.getString("age") %>></td>
</tr>
<tr>
<td class="text1">身份证号：</td>
<td><input type="text" name="ID" value=<%=rs.getString("ID") %>></td>
</tr>
<tr>
<td class="text1">部门：</td>
<td><input type="text" name="dept" value=<%=rs.getString("dept") %>></td>
</tr>
<tr>
<td class="text1">手机号：</td>
<td><input type="text" name="phone" value=<%=rs.getString("phone") %>></td>
</tr>
<tr>
<td class="text1">QQ：</td>
<td><input type="text" name="QQ" value=<%=rs.getString("QQ") %>></td>
</tr>
<tr>
<td class="text1">家庭住址：</td>
<td><input type="text" name="address" value=<%=rs.getString("address") %>></td>
</tr>
<tr>
<td>&nbsp;</td>
<td><input type="submit" value="修改" class="btn"></td>
</tr>
</table>
</form>
</div>
<%}
rs.close();
ps.close();
conn.close();
%>
</div>
</body>
</html>
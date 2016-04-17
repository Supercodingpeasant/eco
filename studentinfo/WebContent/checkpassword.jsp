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
String username=request.getParameter("username");
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/db_user","root","123456");
String sql="update user set password=? where username=?";
PreparedStatement ps=conn.prepareStatement(sql);
ps.setString(1, password);
ps.setString(2, username);
ps.executeUpdate();
if(ps!=null){%>
<script language="javascript">
alert("修改成功");
window.history.back(-1);
</script>
<%
}
ps.close();
conn.close();
%>
</body>
</html>
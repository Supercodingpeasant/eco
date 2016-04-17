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
request.setCharacterEncoding("UTF-8");
String sno=request.getParameter("sno");
String sname=request.getParameter("sname");
String sex=request.getParameter("sex");
String age=request.getParameter("age");
String ID=request.getParameter("ID");
String dept=request.getParameter("dept");
String phone=request.getParameter("phone");
String QQ=request.getParameter("QQ");
String address=request.getParameter("address");
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/db_user","root","123456");
String sql="insert into student values('"+sno+"','"+sname+"','"+sex+"','"+age+"','"+ID+"','"+dept+"','"+phone+"','"+QQ+"','"+address+"')";
Statement stmt=conn.createStatement();
int count=stmt.executeUpdate(sql);
if(count>0){%>
<script language="javascript">
alert("添加成功");
window.history.back(-1);
</script>
<%
}
conn.close();
%>
</body>
</html>
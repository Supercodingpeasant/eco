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
String sname=request.getParameter("sname").toString();
String sex=request.getParameter("sex");
String age=request.getParameter("age");
String ID=request.getParameter("ID").toString();
String dept=request.getParameter("dept").toString();
String phone=request.getParameter("phone");
String QQ=request.getParameter("QQ");
String address=request.getParameter("address").toString();
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/db_user","root","123456");
String sql="update student set sname=?,sex=?,age=?,ID=?,dept=?,phone=?,QQ=?,address=? where sno=?";
Statement  stmt= conn.createStatement();
PreparedStatement ps=conn.prepareStatement(sql);
ps.setString(1, sname);
ps.setString(2,sex);
ps.setString(3, age);
ps.setString(4, ID);
ps.setString(5,dept);
ps.setString(6,phone);
ps.setString(7,QQ);
ps.setString(8,address);
ps.setString(9, sno);
ps.executeUpdate();
if(ps!=null){%>
<script language="javascript">
alert("修改成功");
window.history.go(-1);
</script>
<%}
ps.close();
conn.close();
%>
</body>
</html>
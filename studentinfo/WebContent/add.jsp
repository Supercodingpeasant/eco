<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<div id="form1">
<form name="form1" action="insert.jsp" method="post">
<table>
<tr>
<td class="text1">学号：</td>
<td><input type="text" name="sno"></td>
</tr>
<tr>
<td class="text1">姓名：</td>
<td><input type="text" name="sname"></td>
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
<td><input type="text" name="age"></td>
</tr>
<tr>
<td class="text1">身份证号：</td>
<td><input type="text" name="ID"></td>
</tr>
<tr>
<td class="text1">部门：</td>
<td><input type="text" name="dept"></td>
</tr>
<tr>
<td class="text1">手机号：</td>
<td><input type="text" name="phone"></td>
</tr>
<tr>
<td class="text1">QQ：</td>
<td><input type="text" name="QQ"></td>
</tr>
<tr>
<td class="text1">家庭住址：</td>
<td><input type="text" name="address"></td>
</tr>
<tr>
<td>&nbsp;</td>
<td><input type="submit" value="添加" class="btn"></td>
</tr>
</table>
</form>
</div>
</div>
</body>
</html>
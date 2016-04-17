<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/add.css">
<script type="text/javascript">
function check(){
	if(form.username.value==""){
		alert("用户名不能为空");
        return false;
	}
	else if(form.password.value==""){
    	alert("密码不能为空");
    	return false;
    }
}
</script>
</head>
<body>
<jsp:include page="header.jsp"/> 
<jsp:include page="leftmenu.jsp"/>
<div id="content_right">
<div id="form1">
<form name="form" action="checkpassword.jsp" method="post" onsubmit="return check()">
<table>
<tr>
<td class="text1">请输入要修改密码的用户名：</td>
<td><input type="text" name="username"></td>
</tr>
<tr>
<td class="text1">请输入新的密码：</td>
<td><input type="password" name="password"></td>
</tr>
<tr>
<td>&nbsp;</td>
<td><input type="submit" value="修改" class="btn"></td>
</tr>
</table>
</form>
</div>
</div>
</body>
</html>
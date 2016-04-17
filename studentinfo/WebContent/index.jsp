<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="login.css">
<script type="text/javascript" src="js/check.js"></script>
</head>
<body>
<div id="containter">
<div id="content">
<form name="form" action="check.jsp" method="post" onsubmit="return check()">
<div id="inp">
<label for="user">用户名：</label>
<input type="text" name="username" id="user">
</div>
<div id="pid">
<label for="pass">密&nbsp;&nbsp;&nbsp; 码：</label>
<input type="password" name="password" id="pass">
</div>
<div id="sid">
<input type="image" src="images/logo.jpg">
</div>
</form>
</div>
</div>
</body>
</html>
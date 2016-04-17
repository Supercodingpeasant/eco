<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/update.css">
<script type="text/javascript">
function check(){
	if(form.sno.value=="")
	{
        alert("用户名不能为空");
        return false;
    }
}
</script>
</head>
<body>
<jsp:include page="header.jsp"/> 
<jsp:include page="leftmenu.jsp"/>
<div id="content_right">
<div id="inp">
<p>请输入要修改的学生的学号：</p>
<br/>
<form name="form" action="updateinfo.jsp" method="post" onsubmit="return check()">
<input type="text" name="sno" id="user">
<input type="submit" value="确&nbsp;定" id="btn">
</form>
</div>
</div>
</body>
</html>
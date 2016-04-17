/**
 * 
 */
function check(){
    if(form.username.value==""){
        alert("用户名不能为空");
        return false;
    }
    else if(form.password.value==""){
    	alert("密码不能为空");
    	return false;
    }
    else
    	form.submit();
}
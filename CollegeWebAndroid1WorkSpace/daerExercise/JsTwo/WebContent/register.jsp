<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
<link href="css/degin.css" rel="stylesheet"> 
</head>
<body>
	<p>欢迎进入购物注册页面</p>
	<div class="centerdiv">
		<form action="doreg.jsp" method="post" class="back">
			<h2>用  户  名:<input type="text" class="input" name="user" placeholder="请输入用户名"/></h2>
			<h2>密        码:<input type="password" class="input" name="pass" placeholder="请输入密码"/></h2>
			<h2>确认密码:<input type="password" class="input" name="passcheck" placeholder="请确认密码"/></h2>
			<input type="submit" value="注册"/>&nbsp;<input type="reset" value="重置"/>
			<br/>
			已有账号，去<a href="login.jsp">登录</a>
		</form>
	
	</div>
</body>
</html>
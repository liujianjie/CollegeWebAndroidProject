<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
</head>
<body>
<form action="logincheck.jsp" method="get">
	<p>用户名：<input type="text" name="username" /></p>
	<p>密码：<input type="password" name="password" /></p>
	<p><input type="submit" value="登录"/> <input type="reset" value="清除"/></p>
</form>
</body>
</html>
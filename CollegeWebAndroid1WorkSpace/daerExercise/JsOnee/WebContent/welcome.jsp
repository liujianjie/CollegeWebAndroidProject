<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(session.getAttribute("flag") != null){
	%>
		<h1>欢迎光临!</h1>
	<%
		}
		else{
	%>
		<h1>您还没有登录</h1>
	<%
			response.setHeader("refresh","2;URL=login.jsp");
		}
	%>
</body>
</html>
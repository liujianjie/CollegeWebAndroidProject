<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'user.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<body>
		<table>
			<tr>
				<td>
					1
				</td>
				<td>
					1000
				</td>
				<td>
					张三
				</td>
				<td>
					<a href="roll?method=queryuserroll&uid=1000">权限管理</a>
				</td>
			</tr>
			<tr>
				<td>
					1
				</td>
				<td>
					1001
				</td>
				<td>
					李四
				</td>
				<td>
					<a href="roll?method=queryuserroll&uid=1001">权限管理</a>
				</td>
			</tr>
		</table>

	</body>
</html>

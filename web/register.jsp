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

		<title>用户注册</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<body >
		<div style="height: 200px"></div>
		<div align="center">

			<form method="post"
				action="<%=request.getContextPath()%>/servlet/RegisterServlet">
				<p>
					<a>账号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
					<input type="text" name="id" id="id">
				</p>
				<p>
					<a>密码&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
					<input type="password" name="password" id="p1">
				</p>
				<p>
					<a>确认密码</a>
					<input type="password" name="password1" id="p2">
				</p>

				<p>
					<input type="submit" value="立即注册">
				</p>
			</form>
		</div>
		<div style="height: 200px"></div>
	</body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="ticketing.dao.User_Dao"%>
<%@page import="ticketing.model.User"%>
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

		<title>个人中心</title>

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
		<%
			request.setCharacterEncoding("utf-8");
			String id_p = (String) request.getSession().getAttribute("id_p");
			User user = User_Dao.find_id_p(id_p);
			String id=String.valueOf(user.getId());
			session.setAttribute("id",id);
			out.print("ID: " + id);
			String idCard = user.getId_card();
			String money = String.valueOf(user.getMoney());
			String tel = user.getTel();
			String email = user.getE_mail();
		%>
		<div>

			<form action="<%=request.getContextPath()%>/servlet/UpdateServlet"
				method="post">
				<p>
					昵称：
					<input type="text" value="<%=id_p%>" name="id_p" />
				</p>
				<p>
					ID-card：
					<input type="text" value="<%=idCard%>" name="id_card"/>
				</p>
				<p>
					账户：<%=money + "元"%></p>
				<p>
					E-Mail：
					<input type="text" value="<%=email%>" name="e_mail"/>
				</p>
				<p>
					Tel：
					<input type="text" value="<%=tel%>" name="tel"/>
				</p>
				<p>
					<input type="submit" value="修改" />
				</p>
			</form>
		</div>
	</body>
</html>

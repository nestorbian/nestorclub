<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8" />
<title>管理员后台</title>
<style type="text/css">
body{
background-image:url(mainview/img/login1.jpg);
background-repeat: no-repeat;
background-size:1200px 700px;
}
p{
text-align: center;
font-size: 40px;
font-family: 宋体;
margin-top: 100px;
}
.main{
width: 1200px;
height: 600px;
}
</style>
</head>

<body>
<div class="main">
<p>欢迎来到茶道网管理员系统</p>
</div>
</body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>茶道网</title>
<style type="text/css">
.main {
	text-align: center;
}

.main .maintenance {
	margin-top: 50px;
}

.main p {
	font-size: 30px;
	font-family: 宋体;
}

.main a {
	text-decoration: none;
	font-family: 宋体;
	font-size: 23px;
}

.main a:HOVER {
	color: gray;
}
</style>

</head>

<body>
	<div class="main">
		<img alt="loading" src="mainview/img/success.jpg" width="500px;"
			height="400px;" class="maintenance">
		<p>${info}</p>
		<a id="show" href="view/teaindex.jsp">倒计时4秒跳转到茶道网首页</a>
	</div>
	<script type="text/javascript">
	var t=3;
	setInterval("refer()",1000);
	function refer()
	{
	if(t==0)window.location="view/teaindex.jsp";
	else document.getElementById('show').innerHTML="倒计时"+t+"秒跳转到茶道网首页";
	t--;
	}
        </script>
</body>
</html>

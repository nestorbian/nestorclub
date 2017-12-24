<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>error</title>
    <style type="text/css">
    .main{
    text-align: center;
    }
    .main .maintenance{
    margin-top: 50px;
    }
    .main p{
    font-size: 30px;
    font-family: 宋体;
    }
    .main a{
    text-decoration: none;
    font-family:宋体;
    font-size: 23px; 
    }
    .main a:HOVER {
	color: gray;
    }
    </style>

</head>
  
  <body>
       <div class="main">
        <img alt="loading" src="mainview/img/maintenance.jpg" width="500px;" height="400px;" class="maintenance"><p>正在抢修维护中...</p>
        <a href="view/teaindex.jsp">返回首页</a>
        </div>
  </body>
</html>

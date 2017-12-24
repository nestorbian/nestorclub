<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="<%=basePath%>">
    <title>登录</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <script type="text/javascript" src="mainview/js/jquery-1.11.3.js"></script>
    <script type="text/javascript" src="mainview/js/login.js"></script>
    <link href="mainview/css/login.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript">
	$("document").ready(function(){
	$("#longinbutton").click(function(){
	var user = {username:$("#username").val(),password:$("#password").val()};
	$.ajax({
	url: 'user/login.do',
	type: 'POST',
	data: JSON.stringify(user),
	contentType: 'application/json;charset=utf8',
	dataType: 'json',
	success: function(data, textStatus) {
		if(!data.username){    
			$("p").html("用户名和密码不匹配，请重新输入");
				}
			else{
			    $(".button_blue").val("正在登录");
				window.setTimeout("window.location.href='view/teaindex.jsp'",500);
			}
			console.log(textStatus);
	}
	}
	);
	
/* 		$.post("user/login.do",{username:$("#username").val(),password:$("#password").val()},function(data,status){
			if(data=='')
		   {    $("p").html("用户名和密码不匹配，请重新输入");
				}
			else{
			    $(".button_blue").val("正在登录");
				window.setTimeout("window.location.href='view/teaindex.jsp'",500);
			}
		}); */
	});
});
	
	</script>
</head>
<body>

<div class="login" style="margin-top:150px;">
    <div class="header">
        <div class="switch" id="switch">
            <a class="switch_btn_focus" id="switch_qlogin" href="javascript:void(0);" tabindex="7">登录</a>
            <a class="switch_btn" id="switch_login" href="javascript:void(0);" tabindex="8">注册</a>
            <div class="switch_bottom" id="switch_bottom" style="position: absolute; width: 64px; left: 0px;">
            </div>
        </div>
    </div>
    <div class="web_qr_login" id="web_qr_login" style="display: block; height: 290px;">
        <!--登录-->
        <div class="web_login" id="web_login">
            <div class="login-box">
                    <form action="" name="loginform" accept-charset="utf-8" id="login_form" class="loginForm" method="post">
                               <p></p>
                              <input type="text"  name="username" id="username" class="inputstyle" placeholder="用户名"/>
                                <input type="password"  name="password" id="password" class="inputstyle" placeholder="密码"/><br>
                        <input type="button" value="登 录" style="width:150px;" class="button_blue" id="longinbutton"/><br>
                        <a href="view/teaindex.jsp" id="youke">游客入口</a>
                    </form>
            </div>
        </div>
        <!--登录end-->
    </div>
    <!--注册-->
    <div class="qlogin" id="qlogin" style="display: none; ">
             <div class="web_login">
                <div id="userCue" class="cue">快速注册请注意格式</div>
                 <div class="zhuce">
                 <form action="user/register.do" id="registerform" method="post">
                    <p>用户名：</p>
                    <input type="text" id="user" name="username"  class="inputstyle2"/>
                    <p>密码：</p>
                    <input type="password" id="passwd"  name="password" class="inputstyle2"/>
                    <p>确认密码：</p>
                    <input type="password"  name="repeatpassword" class="inputstyle2"/>
                    <p>真实姓名：</p>
                    <input type="text"   name="truename" class="inputstyle2"/><br>
                    <p>手机号：</p>
                    <input type="text"   name="phone" class="inputstyle2"/><br>
                    <p>地址：</p>
                    <input type="text"   name="address" class="inputstyle2"/><br>
                    <input type="submit" id="reg"  style="margin-top:10px;margin-left:85px;" class="button_blue" value="注册"/>
                  </form>
                 </div>
        </div>
    </div>
    <!--注册end-->
</div>
<script type="text/javascript" src="mainview/js/jquery.min.js"></script>
<script type="text/javascript" src="mainview/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="mainview/js/common.js"></script>
</body></html>
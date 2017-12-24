<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>管理员后台</title>
<!-- basic styles -->

<link href="backview/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="backview/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="backview/css/jquery-ui-1.10.3.custom.min.css" />
<link rel="stylesheet" href="backview/css/chosen.css" />
<link rel="stylesheet" href="backview/css/datepicker.css" />
<link rel="stylesheet" href="backview/css/bootstrap-timepicker.css" />
<link rel="stylesheet" href="backview/css/daterangepicker.css" />
<link rel="stylesheet" href="backview/css/colorpicker.css" />

<!-- fonts -->



<!-- ace styles -->

<link rel="stylesheet" href="backview/css/ace.min.css" />
<link rel="stylesheet" href="backview/css/ace-rtl.min.css" />
<link rel="stylesheet" href="backview/css/ace-skins.min.css" />

<!--[if lte IE 8]>
		  <link rel="stylesheet" href="backview/css/ace-ie.min.css" />
		<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->

<script src="backview/js/ace-extra.min.js"></script>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

<!--[if lt IE 9]>
		<script src="backview/js/html5shiv.js"></script>
		<script src="backview/js/respond.min.js"></script>
		<![endif]-->
</head>

<body>
	<div class="main-container" id="main-container">
		<div class="main-container-inner">
			<div class="page-content">
				<div class="page-header">
					<h1>
						用户管理 <small> <i class="icon-double-angle-right"></i>
							用户增加/修改 </small>
					</h1>
				</div>
				<!-- /.page-header -->

				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->

						<form class="form-horizontal" role="form"
							action="user/addormodify.do" id="userform" method="post"
							enctype="multipart/form-data">
							<input type="hidden" id="id" class="id" name="id" value="${null==user?0:user.id }">

							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right"
									for="form-field-1"> 用户名</label>

								<div class="col-sm-9">
									<input type="text" id="username" placeholder="请输入用户名"
										class="username" name="username"
										value="${null==user?'':user.username}" /><span class="warn" style="color:red;"></span>
								</div>
							</div>
							<div class="space-4"></div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right"
									for="form-field-1"> 密码</label>

								<div class="col-sm-9">
									<input type="text" id="password" placeholder="请输入密码"
										class="password" name="password"
										value="${null==user?'':user.password}" />
								</div>
							</div>
							<div class="space-4"></div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right"
									for="form-field-1"> 真实姓名</label>

								<div class="col-sm-9">
									<input type="text" id="truename" placeholder="请输入真实姓名"
										class="truename" name="truename"
										value="${null==user?'':user.truename}" />
								</div>
							</div>
							<div class="space-4"></div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right"
									for="form-field-1"> 手机号</label>

								<div class="col-sm-9">
									<input type="text" id="phone" placeholder="请输入手机号"
										class="phone" name="phone" value="${null==user?'':user.phone}" />
								</div>
							</div>
							<div class="space-4"></div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right"
									for="form-field-1"> 账户余额</label>

								<div class="col-sm-9">
									<input type="text" id="account" placeholder="请输入账户余额"
										class="account" name="account" value="${null==user?'':user.account}" />
								</div>
							</div>
							<div class="space-4"></div>

							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right"
									for="form-field-1"> 地址</label>

								<div class="col-sm-9">
									<textarea rows="4" cols="60" name="address" placeholder="请输入地址">${null==user?'':user.address }</textarea>
								</div>
							</div>


							<div class="space-4"></div>

							<div class="clearfix form-actions">
								<div class="col-md-offset-3 col-md-9">
									<button class="btn btn-info" type="submit" id="save">
										<i class="icon-ok bigger-110"></i> 保存
									</button>

								</div>
							</div>

						</form>


					</div>
				</div>
				<!-- PAGE CONTENT ENDS -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.page-content -->


	<!--[if !IE]> -->

	<script src="backview/js/jquery.min.js"></script>

	<!-- <![endif]-->

	<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

	<!--[if !IE]> -->

	<script type="text/javascript">
		window.jQuery
				|| document
						.write("<script src='backview/js/jquery-2.0.3.min.js'>"
								+ "<"+"/script>");
	</script>

	<!-- <![endif]-->

	<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='backview/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

	<script type="text/javascript">
		if ("ontouchend" in document)
			document
					.write("<script src='backview/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");

		jQuery(function($) {
			$('#id-input-file-2').ace_file_input({
				no_file : 'No File ...',
				btn_choose : 'Choose',
				btn_change : 'Change',
				droppable : false,
				onchange : null,
				thumbnail : false
			//| true | large
			//whitelist:'gif|png|jpg|jpeg'
			//blacklist:'exe|php'
			//onchange:''
			//
			});

			$('#id-input-file-2').change(function() {
				$('#imgPath').val('');
			});

		});
	</script>
	<script src="backview/js/bootstrap.min.js"></script>
	<script src="backview/js/typeahead-bs2.min.js"></script>

	<!-- page specific plugin scripts -->

	<!--[if lte IE 8]>
		  <script src="backview/js/excanvas.min.js"></script>
		<![endif]-->

	<script src="backview/js/jquery-ui-1.10.3.custom.min.js"></script>
	<script src="backview/js/jquery.ui.touch-punch.min.js"></script>
	<script src="backview/js/chosen.jquery.min.js"></script>
	<script src="backview/js/fuelux/fuelux.spinner.min.js"></script>
	<script src="backview/js/date-time/bootstrap-datepicker.min.js"></script>
	<script src="backview/js/date-time/bootstrap-timepicker.min.js"></script>
	<script src="backview/js/date-time/moment.min.js"></script>
	<script src="backview/js/date-time/daterangepicker.min.js"></script>
	<script src="backview/js/bootstrap-colorpicker.min.js"></script>
	<script src="backview/js/jquery.knob.min.js"></script>
	<script src="backview/js/jquery.autosize.min.js"></script>
	<script src="backview/js/jquery.inputlimiter.1.3.1.min.js"></script>
	<script src="backview/js/jquery.maskedinput.min.js"></script>
	<script src="backview/js/bootstrap-tag.min.js"></script>

	<!-- ace scripts -->

	<script src="backview/js/ace-elements.min.js"></script>
	<script src="backview/js/ace.min.js"></script>

	<!-- inline scripts related to this page -->
	<script type="text/javascript" src="mainview/js/jquery-1.11.3.js"></script>
	<script type="text/javascript" src="mainview/js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="mainview/js/common.js"></script>
	<script type="text/javascript">
	$(function(){
	$(".username").keyup(function(){
	$("#save").prop("disabled",false);
	var id=$(".id").val();
	if(parseInt(id)==0)
	{
	var username=$(".username").val();
	$.ajax({
	type:'post',
	url:'user/checkName.do',
	data:{"username":username},
	success:function(data){
	if(data==true)$(".warn").html("");
	else 
	{
	$(".warn").html("用户名已存在");
	$("#save").prop("disabled",true);
	}
	}
	});
	}
	else{
	var username=$(".username").val();
	if(username!="${user.username}")
	{
	$.ajax({
	type:'post',
	url:'user/checkName.do',
	data:{"username":username},
	success:function(data){
	if(data==true)$(".warn").html("");
	else 
	{
	$(".warn").html("用户名已存在");
	$("#save").prop("disabled",true);
	}
	}
	});
	}
	else $(".warn").html("");
	}
	});
	});
	</script>
</body>
</html>

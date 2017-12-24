<%@ page language="java" pageEncoding="UTF-8"%>
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
<title>首页</title>
<meta name="keywords"
	content="Bootstrap模版,Bootstrap模版下载,Bootstrap教程,Bootstrap中文" />
<meta name="description"
	content="JS代码网提供Bootstrap模版,Bootstrap教程,Bootstrap中文翻译等相关Bootstrap插件下载" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- basic styles -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />

<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

<!-- page specific plugin styles -->

<!-- fonts -->

<!-- ace styles -->

<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="assets/css/ace-skins.min.css" />

<script src="assets/js/ace-extra.min.js"></script>

</head>

<body>
	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed');
			} catch (e) {
			}
		</script>
		<div class="page-content">
			<form action="priv/mod.do" method="post">

				<div class="row">
					<div class="col-xs-12">
						<div class="row">
							<div class="col-xs-11">
								<h3 class="header smaller lighter blue">权限管理</h3>
							</div>
							<div class="col-xs-1">
								<button class="btn btn-app btn-primary btn-xs" type="submit">
									<i class="icon-plus bigger-160"></i> 修改
								</button>
							</div>
						</div>

						<div class="row">
							<div class="space-6"></div>

							<div class="col-sm-4">
								<div class="widget-box">
									<div
										class="widget-header widget-header-flat widget-header-small">
										<h5>
											<i class="icon-user"></i> 用户身份
										</h5>
									</div>

									<div class="widget-body">
										<div class="widget-main">
											<div class="clearfix">
												<div class="grid3">
													<div class="row">
														<label> <input name="identify" type="radio"
															class="ace" value="管理员"><span class="lbl">&nbsp;&nbsp;<span
																class="label label-xlg label-purple arrowed arrowed-right">管理员</span>
														</span> </label>
													</div>
												</div>
											</div>
											<div class="space-6"></div>
											<div class="clearfix">
												<div class="grid3">
													<div class="row">
														<label> <input name="identify" type="radio"
															class="ace" value="商家"><span class="lbl">&nbsp;&nbsp;<span
																class="label label-xlg label-primary arrowed arrowed-right">商家</span>
														</span> </label>
													</div>
												</div>
											</div>
											<div class="space-6"></div>
											<div class="clearfix">
												<div class="grid3">
													<div class="row">
														<label> <input name="identify" type="radio"
															class="ace" value="会员"><span class="lbl">&nbsp;&nbsp;<span
																class="label label-xlg label-pink arrowed arrowed-right">会员</span>
														</span> </label>
													</div>
												</div>
											</div>
										</div>
										<!-- /widget-main -->
									</div>
									<!-- /widget-body -->
								</div>
								<!-- /widget-box -->
							</div>

							<div class="vspace-sm"></div>

							<div class="col-sm-5">
								<div class="widget-box">
									<div
										class="widget-header widget-header-flat widget-header-small">
										<h5>
											<i class="icon-signal"></i> 权限列表
										</h5>
									</div>

									<div class="widget-body">
										<div class="widget-main">
											<div class="clearfix">
												<div class="row">
													<div class="col-sm-2">
														<label> <input name="privIds"
															class="ace ace-switch ace-switch-6" type="checkbox"
															value="1"> <span class="lbl"></span> </label>
													</div>
													<div class="col-sm-9">
														<label
															class="label label-xlg label-success arrowed-in arrowed-in-right">用户管理</label>
													</div>
												</div>
											</div>
											<div class="space-4"></div>
											<div class="clearfix">
												<div class="row">
													<div class="col-sm-2">
														<label> <input name="privIds"
															class="ace ace-switch ace-switch-6" type="checkbox"
															value="2"> <span class="lbl"></span> </label>
													</div>
													<div class="col-sm-9">
														<label
															class="label label-xlg label-danger arrowed-in arrowed-in-right">权限管理</label>
													</div>
												</div>
											</div>
											<div class="space-4"></div>
											<div class="clearfix">
												<div class="row">
													<div class="col-sm-2">
														<label> <input name="privIds"
															class="ace ace-switch ace-switch-6" type="checkbox"
															value="3"> <span class="lbl"></span> </label>
													</div>
													<div class="col-sm-9">
														<label
															class="label label-xlg label-purple arrowed-in arrowed-in-right">商品管理</label>
													</div>
												</div>
											</div>
											<div class="space-4"></div>
											<div class="clearfix">
												<div class="row">
													<div class="col-sm-2">
														<label> <input name="privIds"
															class="ace ace-switch ace-switch-6" type="checkbox"
															value="4"> <span class="lbl"></span> </label>
													</div>
													<div class="col-sm-9">
														<label
															class="label label-xlg label-pink arrowed-in arrowed-in-right">商品一览</label>
													</div>
												</div>
											</div>
											<div class="space-4"></div>
											<div class="clearfix">
												<div class="row">
													<div class="col-sm-2">
														<label> <input name="privIds"
															class="ace ace-switch ace-switch-6" type="checkbox"
															value="5"> <span class="lbl"></span> </label>
													</div>
													<div class="col-sm-9">
														<label
															class="label label-xlg label-yellow arrowed-in arrowed-in-right">修改密码</label>
													</div>
												</div>
											</div>
											<div class="space-4"></div>
											<div class="clearfix">
												<div class="row">
													<div class="col-sm-2">
														<label> <input name="privIds"
															class="ace ace-switch ace-switch-6" type="checkbox"
															value="6"> <span class="lbl"></span> </label>
													</div>
													<div class="col-sm-9">
														<label
															class="label label-xlg label-primary arrowed-in arrowed-in-right">充值中心</label>
													</div>
												</div>
											</div>
										</div>
										<!-- /widget-main -->
									</div>
									<!-- /widget-body -->
								</div>
								<!-- /widget-box -->
							</div>
							<!-- /span -->
						</div>
						<!-- /row -->

						<div class="hr hr32 hr-dotted"></div>
						<!-- PAGE CONTENT ENDS -->
					</div>
					<!-- /.col -->
				</div>
			</form>
			<!-- /.row -->
		</div>
	</div>
</body>

<script type="text/javascript" src="assets/js/jquery-2.0.3.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('input[name=identify]').click(function() {
			$.ajax({
				type : "GET",
				url : "priv/getPrivsByIden.do",
				data : {
					identify : $(this).val(),
				},
				dataType : "json",
				success : function(data) {

					var privIdsObj = document.getElementsByName("privIds");

					//先把所有的checkBox设置成未选中状态
					for ( var i = 0; i < privIdsObj.length; i++) {
						privIdsObj[i].checked = false;
					}

					//再根据后台传过来的权限Id(根据身份查询出来的所有权限)把相应的checkBox设置成选中状态
					for ( var i = 0; i < privIdsObj.length; i++) {
						for ( var j = 0; j < data.length; j++) {
							if (privIdsObj[i].value == data[j]) {
								privIdsObj[i].checked = true;
							}
						}
					}
				}
			});
		});
	});
</script>

</html>


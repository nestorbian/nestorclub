//打开字滑入效果
window.onload = function() {
	$(".connect p").eq(0).animate({
		"left" : "0%"
	}, 600);
	$(".connect p").eq(1).animate({
		"left" : "0%"
	}, 400);
};
// jquery.validate表单验证
$(document)
		.ready(
				function() {
					// 登陆表单验证
					$(".loginForm").validate({
						rules : {
							username : {
								required : true,// 必填
								minlength : 2, // 最少6个字符
								maxlength : 16,// 最多16个字符
							},
							password : {
								required : true,
								minlength : 4,
								maxlength : 16,
							},
						},
						// 错误信息提示
						messages : {
							username : {
								required : "必须填写用户名",
								minlength : "用户名至少为2个字符",
								maxlength : "用户名至多为16个字符",
								remote : "用户名已存在",
							},
							password : {
								required : "必须填写密码",
								minlength : "密码至少为4个字符",
								maxlength : "密码至多为16个字符",
							},
						},

					});
					// 注册表单验证
					$("#registerform").validate({
						rules : {
							username : {
								required : true,// 必填
								minlength : 2, // 最少2个字符
								maxlength : 16,// 最多16个字符
								remote : {
									url : "user/checkName.do",// 用户名重复检查，别跨域调用
									type : "post",
								},
							},
							password : {
								required : true,
								minlength : 4,
								maxlength : 16,
							// pass_check : true,
							},
							repeatpassword : {
								required : true,
								minlength : 4,
								equalTo : '#passwd'
							},
							truename : {
								required : true,
								maxlength : 10,
							},
							phone : {
								phone_number : true,
							},
							address : {
								required : true,
								maxlength : 50,
							},
						},
						// 错误信息提示
						messages : {
							username : {
								required : "必须填写用户名",
								minlength : "用户名至少为2个字符",
								maxlength : "用户名至多为16个字符",
								remote : "对不起，用户名已存在",
							},
							password : {
								required : "必须填写密码",
								minlength : "密码至少为4个字符",
								maxlength : "密码至多为16个字符",
							},
							repeatpassword : {
								required : "请再次输入密码",
								minlength : "确认密码不能少于4个字符",
								equalTo : "两次输入密码不一致",// 与另一个元素相同
							},
							truename : {
								required : "请输入姓名",
								maxlength : "姓名至多为10个字符",
							},
							phone : {
								phone_number : "手机号码格式不正确",// 与另一个元素相同
							},
							address : {
								required : "请输入地址",
								maxlength : "地址至多为50个字符",
							},
						},
					});
					// 增加用户表单验证
					$("#userform").validate({
						rules : {
							username : {
								required : true,// 必填
								minlength : 2, // 最少2个字符
								maxlength : 16,// 最多16个字符
							},
							password : {
								required : true,
								minlength : 4,
								maxlength : 16,
							// pass_check : true,
							},
							truename : {
								required : true,
								maxlength : 10,
							},
							phone : {
								required : true,
								phone_number : true,
							},
							address : {
								required : true,
								maxlength : 50,
							},
						},
						// 错误信息提示
						messages : {
							username : {
								required : "<font color='red'>必须填写用户名</font>",
								minlength : "<font color='red'>用户名至少为2个字符</font>",
								maxlength : "<font color='red'>用户名至多为16个字符</font>",
							},
							password : {
								required : "<font color='red'>必须填写密码</font>",
								minlength : "<font color='red'>密码至少为4个字符</font>",
								maxlength : "<font color='red'>密码至多为16个字符</font>",
							},
							truename : {
								required : "<font color='red'>请输入姓名</font>",
								maxlength : "<font color='red'>姓名至多为10个字符</font>",
							},
							phone : {
								required : "<font color='red'>必须填写手机号码</font>",
								phone_number : "<font color='red'>手机号码格式不正确</font>",// 与另一个元素相同
							},
							address : {
								required : "<font color='red'>请输入地址</font>",
								maxlength : "<font color='red'>地址至多为50个字符</font>",
							},
						},
					});
					// 文章表单验证
					$("#essayform").validate({
						rules : {
							author : {
								required : true,// 必填
								minlength : 1, // 最少1个字符
								maxlength : 12,// 最多12个字符
							},
							content : {
								required : true,
								minlength : 1,
								maxlength : 800,
							},
							title : {
								required : true,// 必填
								minlength : 1, // 最少1个字符
								maxlength : 20,// 最多20个字符
							},
						},
						// 错误信息提示
						messages : {
							author : {
								required : "<font color='red'>必须填写文章作者</font>",
								minlength : "<font color='red'>作者名至少为1个字符</font>",
								maxlength : "<font color='red'>作者名至多为20个字符</font>",
							},
							content : {
								required : "<font color='red'>必须填写内容</font>",
								minlength : "<font color='red'>内容至少为1个字符</font>",
								maxlength : "<font color='red'>内容至多为800个字符</font>",
							},
							title : {
								required : "<font color='red'>必须填写文章题目</font>",
								minlength : "<font color='red'>题目名至少为1个字符</font>",
								maxlength : "<font color='red'>题目名至多为20个字符</font>",
							},
						},

					});
					// 添加自定义验证规则
					jQuery.validator
							.addMethod(
									"phone_number",
									function(value, element) {
										var length = value.length;
										var phone_number = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/
										return this.optional(element)
												|| (length == 11 && phone_number
														.test(value));
									}, "手机号码格式错误");

					jQuery.validator
							.addMethod(
									"pass_check",
									function(value, element) {
										var phone_number = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[a-zA-Z0-9]{7,}$/
										return phone_number.test(value);
									}, "密码必须包含大写字母、小写字母和数字");
				});

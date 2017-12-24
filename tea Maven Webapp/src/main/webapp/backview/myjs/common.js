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
					$("#loginForm").validate({
						rules : {
							adname : {
								required : true,// 必填
								minlength : 2, // 最少6个字符
								maxlength : 20,// 最多20个字符
							},
							password : {
								required : true,
								minlength : 4,
								maxlength : 20,
							},
						},
						// 错误信息提示
						messages : {
							adname : {
								required : "必须填写用户名",
								minlength : "用户名至少为2个字符",
								maxlength : "用户名至多为20个字符",
								remote : "用户名已存在",
							},
							password : {
								required : "必须填写密码",
								minlength : "密码至少为4个字符",
								maxlength : "密码至多为20个字符",
							},
						},

					});
					// 注册表单验证
					$("#registerForm").validate({
						rules : {
							username : {
								required : true,// 必填
								minlength : 2, // 最少2个字符
								maxlength : 20,// 最多20个字符
								remote : {
									url : "user/checkName.do",// 用户名重复检查，别跨域调用
									type : "post",
								},
							},
							password : {
								required : true,
								minlength : 4,
								maxlength : 20,
							// pass_check : true,
							},
							confirm_password : {
								required : true,
								minlength : 4,
								equalTo : '.password'
							},
							phone : {
								phone_number : true,
							},
						},
						// 错误信息提示
						messages : {
							username : {
								required : "必须填写用户名",
								minlength : "用户名至少为2个字符",
								maxlength : "用户名至多为20个字符",
								remote : "对不起，用户名已存在",
							},
							password : {
								required : "必须填写密码",
								minlength : "密码至少为4个字符",
								maxlength : "密码至多为20个字符",
							},
							confirm_password : {
								required : "请再次输入密码",
								minlength : "确认密码不能少于4个字符",
								equalTo : "两次输入密码不一致",// 与另一个元素相同
							},
							phone : {
								phone_number : "手机号码格式不正确",// 与另一个元素相同
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

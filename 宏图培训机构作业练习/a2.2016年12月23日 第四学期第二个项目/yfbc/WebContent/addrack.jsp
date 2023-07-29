<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>仓库管理</title>
<meta name="keywords" content="">
<meta name="description">

<link
	href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=3.4.0"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/css/font-awesome.min.css?v=4.3.0"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/animate.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/css/style.min.css?v=3.2.0"
	rel="stylesheet">

</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-sm-8 col-sm-offset-0">
				<button class="btn btn-primary" onclick="location.href='javascript:history.go(-1);'">返回</button>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-sm-12">
				<div class="col-sm-2"></div>
				<div class="col-sm-8">
					<div class="ibox float-e-margins">
						<div class="ibox-title">
							<h5>新建货架</h5>
						</div>
						<div class="ibox-content">
							<form class="form-horizontal m-t" id="signupForm" action="addrack.do" method="post">
								<input type = "hidden" value="${whid }" name="whid">
								<div class="form-group">
									<label class="col-sm-3 control-label">货架名称：</label>
									<div class="col-sm-6">
										<input id="rname" name="rname" class="form-control" type="text">
										<span class="help-block m-b-none"></span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">货架大小：</label>
									<div class="col-sm-6">
										<input id="rsize" name="rsize" class="form-control"
											type="text" aria-required="true" aria-invalid="false"
											class="valid">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">货物类型：</label>
									<div class="col-sm-6">
										<select class="form-control m-b" name="rtype" id="rtype">
										<option></option>
											<c:forEach items="${list }" var="type">
												<option value="${type.tid }">${type.tname }</option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">货物单位：</label>
									<div class="col-sm-3">
										<select class="form-control m-b" 
											id="unit" name = "unit" >
											<option></option>
											<option value="0">个</option>
											<option value="1">件</option>
											<option value="2">千克</option>
										</select>
									</div>
									<div class="col-sm-3" id="city"></div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">是否启用：</label>
									<div class="col-sm-2">
										<div class="radio">
											<label> <input type="radio" 
												 id="statu" name="statu" value="0">是
											</label>
										</div>
									</div>
									<div class="col-sm-2">
										<div class="radio">
											<label> <input type="radio" checked="checked"
												 id="statu" name="statu" value="1">否
											</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-8 col-sm-offset-8">
										<button class="btn btn-primary" type="submit">&nbsp;&nbsp;&nbsp;提交&nbsp;&nbsp;&nbsp;</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- 全局js -->
	<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.4.0"></script>

	<!-- 自定义js -->
	<script
		src="${pageContext.request.contextPath}/js/content.min.js?v=1.0.0"></script>

	<!-- jQuery Validation plugin javascript-->
	<script
		src="${pageContext.request.contextPath}/js/plugins/validate/jquery.validate.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/plugins/validate/messages_zh.min.js"></script>
	<script>
		$.validator.setDefaults({
			highlight : function(a) {
				$(a).closest(".form-group").removeClass("has-success")
						.addClass("has-error")
			},
			success : function(a) {
				a.closest(".form-group").removeClass("has-error").addClass(
						"has-success")
			},
			errorElement : "span",
			errorPlacement : function(a, b) {
				if (b.is(":radio") || b.is(":checkbox")) {
					a.appendTo(b.parent().parent().parent())
				} else {
					a.appendTo(b.parent())
				}
			},
			errorClass : "help-block m-b-none",
			validClass : "help-block m-b-none"
		});
		$().ready(function() {
			$("#commentForm").validate();
			var a = "<i class='fa fa-times-circle'></i> ";
			
			$("#signupForm").validate({
				rules : {
					rname : "required",
					rsize : {
						required : true,
						number : true
					},
			
					unit :{
						required:true,
					},
					
					rtype :{
						required:true,
					},
            		
// 					username : {
// 						required : true,
// 						minlength : 2
// 					},
// 					password : {
// 						required : true,
// 						minlength : 5
// 					},
// 					confirm_password : {
// 						required : true,
// 						minlength : 5,
// 						equalTo : "#password"
// 					},
// 					email : {
// 						required : true,
// 						email : true
// 					},
// 					topic : {
// 						required : "#newsletter:checked",
// 						minlength : 2
// 					},
//					agree : "required"
				},
				messages : {
					rname : a + "请输入货架名称",
					rsize : a + "请输货架的大小,只能为数字",
					unit : a + "请选择货架的存储单位",
					rtype : a + "请选择货架存储的商品类型",
// 					username : {
// 						required : a + "请输入您的用户名",
// 						minlength : a + "用户名必须两个字符以上"
// 					},
// 					password : {
// 						required : a + "请输入您的密码",
// 						minlength : a + "密码必须5个字符以上"
// 					},
// 					confirm_password : {
// 						required : a + "请再次输入密码",
// 						minlength : a + "密码必须5个字符以上",
// 						equalTo : a + "两次输入的密码不一致"
// 					},
// 					email : a + "请输入您的E-mail",
// 					agree : {
// 						required : a + "必须同意协议后才能注册",
// 						element : "#agree-error"
// 					}
				}
			});
// 			$("#username").focus(function() {
// 				var c = $("#firstname").val();
// 				var b = $("#lastname").val();
// 				if (c && b && !this.value) {
// 					this.value = c + "." + b
// 				}
// 			})
		});
	</script>

	<script type="text/javascript">
		function showcity() {
			
			var provinceid  = $("#provinceid").val();
			$.post("city.do",{provinceid:provinceid},function(result){
				var list = result.citys;
				
				
				var str = "<select class='form-control m-b' name='cityids' >";
				$.each(list,function(index,city){
					str+="<option value='"+city.cityid+"'>"+city.name+"</option>";
				});
				
				str+="</select>"
				$("#city").html(str);
			},"json");
		}
	</script>
</body>

</html>
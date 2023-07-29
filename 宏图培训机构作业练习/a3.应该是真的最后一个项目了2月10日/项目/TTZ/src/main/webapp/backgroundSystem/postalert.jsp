<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>岗位修改</title>
<meta name="keywords" content="">
<meta name="description">

<link href="${pageContext.request.contextPath }/backgroundSystem/css/bootstrap.min.css?v=3.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/backgroundSystem/css/font-awesome.min.css?v=4.3.0" rel="stylesheet">
    <!-- Sweet Alert -->
    <link href="${pageContext.request.contextPath }/backgroundSystem/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath }/backgroundSystem/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/backgroundSystem/css/style.min.css?v=3.2.0" rel="stylesheet">
	
	<!-- check -->
	<link href="${pageContext.request.contextPath }/backgroundSystem/css/plugins/iCheck/custom.css" rel="stylesheet">    
        <!-- 全局js -->
    <script src="${pageContext.request.contextPath }/backgroundSystem/js/jquery-2.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath }/backgroundSystem/js/bootstrap.min.js?v=3.4.0"></script>

    <!-- 自定义js -->
    <script src="${pageContext.request.contextPath }/backgroundSystem/js/content.min.js?v=1.0.0"></script>

    <!-- Sweet alert -->
    <script src="${pageContext.request.contextPath }/backgroundSystem/js/plugins/sweetalert/sweetalert.min.js"></script>

	<!-- iCheck -->
    <script src="${pageContext.request.contextPath }/backgroundSystem/js/plugins/iCheck/icheck.min.js"></script>
    <!-- jQuery Validation plugin javascriptform提示-->
	<script src="${pageContext.request.contextPath}/backgroundSystem/js/plugins/validate/jquery.validate.min.js"></script>
	<script src="${pageContext.request.contextPath}/backgroundSystem/js/plugins/validate/messages_zh.min.js"></script>
</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-sm-12 col-sm-offset-0">
				<button class="btn btn-primary" onclick="location.href='javascript:history.go(-1);'"><i class="fa fa-reply"></i> 返回</button>
			</div>
			<div class="col-sm-12">
			<div class="col-sm-2"></div>
				<div class="col-sm-12">
					<div class="ibox float-e-margins">
						<div class="ibox-title">
							<h5>修改岗位</h5>
						</div>
						<div class="ibox-content">
							<form class="form-horizontal m-t" id="signupForm" action="${pageContext.request.contextPath }/post/alertpost.action" method="post" >
								<input type="hidden" name="p_id" value="${post.p_id }">
								<div class="form-group">
									<label class="col-sm-2 control-label">岗位名称：</label>
									<div class="col-sm-2">
										<input id="p_name" name="p_name" class="form-control" value="${post.p_name }"
											type="text">
									</div>
									<label class="col-sm-2 control-label">岗位简介：</label>
									<div class="col-sm-4">
										<input id="p_jianjie" name="p_jianjie" class="form-control" value="${post.p_jianjie }"
											type="text">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">选择岗位权限：</label>
								</div>
								<c:forEach items="${perlist }" var = "p">
									${p }
								</c:forEach>
								
								<div class="form-group">
									<table class="table table-hover" align="center">
										<thead>
											<tr height="50" align="center">
												<td width="24%"><b>模块名称</b></td>
												<td><b>子模块</b></td>
											</tr>
										</thead>
										<tbody id = "tbody">
											<tr height="50" align="center">
													<td><input type="checkbox" id="" name="checks" value="1" class="i-checks"
														${fn:contains(perlist,'1')?'checked':'' }>人员管理 
													</td>
													<td><input type="checkbox" id="" name="checks" value="2" class="i-checks"
														${fn:contains(perlist,'2')?'checked':'' }>添加人员
														<input type="checkbox" id="" name="checks" value="3" class="i-checks"
														${fn:contains(perlist,'3')?'checked':'' }>人员信息
														<input type="checkbox" id="" name="checks" value="4" class="i-checks"
														${fn:contains(perlist,'4')?'checked':'' }>权限管理
														<input type="checkbox" id="" name="checks" value="5" class="i-checks"
														${fn:contains(perlist,'5')?'checked':'' }>岗位管理
													</td>
											</tr>
			
											<tr height="50" align="center">
												<td><input type="checkbox" id="" name="checks" value="6" class="i-checks"
													${fn:contains(perlist,'6')?'checked':'' }>网站会员 
												</td>
												<td><input type="checkbox" id="" name="checks" value="7" class="i-checks"
													${fn:contains(perlist,'7')?'checked':'' }>注册会员管理
													<input type="checkbox" id="" name="checks" value="8" class="i-checks"
													${fn:contains(perlist,'8')?'checked':'' }>会员认证管理
													<input type="checkbox" id="" name="checks" value="9" class="i-checks"
													${fn:contains(perlist,'9')?'checked':'' }>基本资料认证
													<input type="checkbox" id="" name="checks" value="10" class="i-checks"
													${fn:contains(perlist,'10')?'checked':'' }>新用户认证资料
													<input type="checkbox" id="" name="checks" value="11" class="i-checks"
													${fn:contains(perlist,'11')?'checked':'' }>认证资料统计
													
												</td>
											</tr>
			
											<tr height="50" align="center">
												<td><input type="checkbox" id="" name="checks" value="12" class="i-checks"
													${fn:contains(perlist,'12')?'checked':'' }>财务管理 
												</td>
			
												<td><input type="checkbox" id="" name="checks" value="13" class="i-checks"
													${fn:contains(perlist,'13')?'checked':'' }>提现管理 <input
													type="checkbox" id="" name="checks" value="14" class="i-checks"
													${fn:contains(perlist,'14')?'checked':'' }>银行卡管理 <input
													type="checkbox" id="" name="checks" value="15" class="i-checks"
													${fn:contains(perlist,'15')?'checked':'' }>充值记录 <input
													type="checkbox" id="" name="checks" value="16" class="i-checks"
													${fn:contains(perlist,'16')?'checked':'' }>手续费记录 <input
													type="checkbox" id="" name="checks" value="17" class="i-checks"
													${fn:contains(perlist,'17')?'checked':'' }>交易记录</td>
											</tr>
			
											<tr height="50" align="center">
												<td><input type="checkbox" id="" name="checks" value="18" class="i-checks"
													${fn:contains(perlist,'18')?'checked':'' }>借贷管理 
												</td>
			
												<td><input type="checkbox" id="" name="checks" value="19" class="i-checks"
													${fn:contains(perlist,'19')?'checked':'' }>投资管理 <input
													type="checkbox" id="" name="checks" value="20" class="i-checks"
													${fn:contains(perlist,'20')?'checked':'' }>借贷管理 
			
												</td>
											</tr>
											<tr height="50" align="center">
												<td><input type="checkbox" id="" name="checks" value="21" class="i-checks"
													${fn:contains(perlist,'21')?'checked':'' }>&nbsp;设&nbsp;置&nbsp;项
												</td>
			
												<td><input type="checkbox" id="" name="checks" value="22" class="i-checks"
													${fn:contains(perlist,'22')?'checked':'' }>费率设置 <input
													type="checkbox" id="" name="checks" value="23" class="i-checks"
													${fn:contains(perlist,'23')?'checked':'' }>筹款期限设置 
												</td>
											</tr>
											<tr height="50" align="center">
												<td><input type="checkbox" id="" name="checks" value="24" class="i-checks"
													${fn:contains(perlist,'24')?'checked':'' }>审核事项
												</td>
			
												<td><input type="checkbox" id="" name="checks" value="25" class="i-checks"
													${fn:contains(perlist,'25')?'checked':'' }>借款审核 <input
													type="checkbox" id="" name="checks" value="26" class="i-checks"
													${fn:contains(perlist,'26')?'checked':'' }>放款审核
												</td>
											</tr>
											<tr height="50" align="center">
												<td><input type="checkbox" id="" name="checks" value="27" class="i-checks"
													${fn:contains(perlist,'27')?'checked':'' }>网站管理 
												</td>
			
												<td><input type="checkbox" id="" name="checks" value="28" class="i-checks"
													${fn:contains(perlist,'28')?'checked':'' }>网站公告 
			
												</td>
											</tr>
											<tr height="50" align="center">
												<td><input type="checkbox" id="" name="checks" value="29" class="i-checks"
													${fn:contains(perlist,'29')?'checked':'' }>团团转VIP团 
												</td>
			
												<td><input type="checkbox" id="" name="checks" value="30" class="i-checks"
													${fn:contains(perlist,'30')?'checked':'' }>发布vip团 <input
													type="checkbox" id="" name="checks" value="31" class="i-checks"
													${fn:contains(perlist,'31')?'checked':'' }>vip团信息 
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="form-group">
									<div class="col-sm-8 col-sm-offset-8">
									<button class="btn btn-primary" type="submit">&nbsp;&nbsp;&nbsp;修改&nbsp;&nbsp;&nbsp;</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


		<!-- 多选宽 -->
	<script>
        $(document).ready(function () {
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
        });
    </script>

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
					p_name : "required",
					p_jianjie  : "required"
				},
				messages : {
					p_name : "岗位名称不能为空",
					p_jianjie  : "岗位简介不能为空"
				}
			});
		});
	</script>
	

</body>

</html>
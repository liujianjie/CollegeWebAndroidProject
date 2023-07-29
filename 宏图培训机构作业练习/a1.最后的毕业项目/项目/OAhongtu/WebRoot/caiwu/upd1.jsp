<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!-- 收入修改页面 -->

<!DOCTYPE html>
<html lang="en">
	<head>
		<base href="<%=basePath%>">
		<!--
        ===
        This comment should NOT be removed.

        Charisma v2.0.0

        Copyright 2012-2014 Muhammad Usman
        Licensed under the Apache License v2.0
        http://www.apache.org/licenses/LICENSE-2.0

        http://usman.it
        http://twitter.com/halalit_usman
        ===
    -->
		<meta charset="utf-8">
		<title>Free HTML5 Bootstrap Admin Template</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description"
			content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
		<meta name="author" content="Muhammad Usman">

		<!-- The styles -->
		<link id="bs-css" href="css/bootstrap-cerulean.min.css"
			rel="stylesheet">

		<link href="css/charisma-app.css" rel="stylesheet">
		<link href='bower_components/fullcalendar/dist/fullcalendar.css'
			rel='stylesheet'>
		<link href='bower_components/fullcalendar/dist/fullcalendar.print.css'
			rel='stylesheet' media='print'>
		<link href='bower_components/chosen/chosen.min.css' rel='stylesheet'>
		<link href='bower_components/colorbox/example3/colorbox.css'
			rel='stylesheet'>
		<link href='bower_components/responsive-tables/responsive-tables.css'
			rel='stylesheet'>
		<link
			href='bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css'
			rel='stylesheet'>
		<link href='css/jquery.noty.css' rel='stylesheet'>
		<link href='css/noty_theme_default.css' rel='stylesheet'>
		<link href='css/elfinder.min.css' rel='stylesheet'>
		<link href='css/elfinder.theme.css' rel='stylesheet'>
		<link href='css/jquery.iphone.toggle.css' rel='stylesheet'>
		<link href='css/uploadify.css' rel='stylesheet'>
		<link href='css/animate.min.css' rel='stylesheet'>

		<!-- jQuery -->
		<script src="bower_components/jquery/jquery.min.js"></script>

		<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
		<!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

		<!-- The fav icon -->
		<link rel="shortcut icon" href="img/favicon.ico">

		<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>

<script type="text/javascript">
	function check(){
		var t1=$("#t1").val();
		var t2=$("#t2").val();
		var b=$("#b").val();
		if(t1==""){
			alert("请填写金额！");
			return false;
		}
		if(isNaN(t1)){
			alert("请输入数字金额！");
			return false;
		}
		
		if(t2==""){
			alert("请登录！");
			return false;
		}
		
		if(b==""){
			alert("请填写时间！");
			return false;
		}
		
		
		return true;
	}
</script>

	</head>

	<body>
		<div class="ch-container">
			<div class="row">

				

				<div id="content" class="col-lg-10 col-sm-10" style="width: 100%;">
					<!-- content starts -->
					<div>
						<ul class="breadcrumb">
							<li>
								<a href="homepage(tea).jsp" target="_blank">主页</a>
							</li>
							<li>
								<a href="javascript:history.go(-1);">返回上一页</a>
							</li>
						</ul>
					</div>
					<!-- content starts -->
					<div class="row">
						<div class="box col-md-12">
							<div class="box-inner">
								<div class="box-header well" data-original-title="">
									<h2>
										<i class="glyphicon glyphicon-edit"></i> 修改收入信息
									</h2>

									
								</div>
								<div class="box-content">
									<form role="form" action="lcy/upd1.action" method="post">
										<!-- 收入id -->
										<input type="hidden" class="form-control" id="ename"
											name="sh.shouru_id" value="${shouru.shouru_id }">
										<!-- 年份 -->
										<input type="hidden" class="form-control" id=""
											name="sh.s_year" value="${shouru.s_year }">
										<!-- 月份 -->
										<input type="hidden" class="form-control" id=""
											name="sh.s_month" value="${shouru.s_month }">
											

										<div class="box-content">
											<div class="control-group">
												<label class="control-label" for="selectError">
													收费项目
												</label>
												<div class="controls">
													<select id="selectError" data-rel="chosen"
														style="width: 100px;" name="sh.shoufei_xiangmu">
														<option value="0" ${shouru.shoufei_xiangmu==0?'selected':'' }>
															学费
														</option>
														<option value="1" ${shouru.shoufei_xiangmu==1?'selected':'' }>
															项目开发
														</option>
														<option value="2" ${shouru.shoufei_xiangmu==2?'selected':'' }>
															其他
														</option>
													</select>
												</div>
											</div>
										</div>

										<div class="box-content">
											<div class="control-group">
												<label for="exampleInputEmail1">
													收费金额
												</label>
												<input type="text" id="t1" class="form-control" id="ename"
													style="width: 300px;" name="sh.shoufei_jine"
													value="${shouru.shoufei_jine }">
											</div>
										</div>

										<div class="box-content">
											<div class="control-group">
												<label for="exampleInputEmail1">
													经手人
												</label>
												<!-- 
													<input type="text" id="t2" class="form-control" id="ename"
													style="width: 300px;" name="sh.jingshouren"
													value="${shouru.jingshouren }">
												 -->
												 <input type="text" id="t2" class="form-control" 
													style="width: 300px;" name="sh.jingshouren"
													value="${teacher.ename }" readonly="readonly">
											</div>
										</div>

										<div class="box-content">
											<div class="control-group">
												<label for="exampleInputEmail1">
													备注
												</label>
												<input type="text" class="form-control" id="ename"
													placeholder="可不填" style="width: 300px;" name="sh.beizhu"
													value="${shouru.beizhu }">
											</div>
										</div>

										<div class="box-content">
											<div class="control-group">
												<label for="exampleInputEmail1">
													收费时间
												</label>

												<input type="text" id="b" readonly="readonly" class="form-control"
													style="width: 300px;"
													name="sh.shoufei_time" value="${shouru.shoufei_time }" />
											</div>
										</div>

										<!-- submit提交按钮样式 -->
										<div class="box-content">
											<div class="control-group">
												<button type="submit" onclick="return check();" class="btn btn-default">
													<b>修改</b>
												</button>
											</div>
										</div>
									</form>


								</div>
							</div>
						</div>
						<!--/span-->

					</div>
					<!--/row-->

					<!-- content ends -->

					<!-- external javascript -->

					<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

					<!-- library for cookie management -->
					<script src="js/jquery.cookie.js"></script>
					<!-- calender plugin -->
					<script src='bower_components/moment/min/moment.min.js'></script>
					<script
						src='bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
					<!-- data table plugin -->
					<script src='js/jquery.dataTables.min.js'></script>

					<!-- select or dropdown enhancer -->
					<script src="bower_components/chosen/chosen.jquery.min.js"></script>
					<!-- plugin for gallery image view -->
					<script src="bower_components/colorbox/jquery.colorbox-min.js"></script>
					<!-- notification plugin -->
					<script src="js/jquery.noty.js"></script>
					<!-- library for making tables responsive -->
					<script
						src="bower_components/responsive-tables/responsive-tables.js"></script>
					<!-- tour plugin -->
					<script
						src="bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
					<!-- star rating plugin -->
					<script src="js/jquery.raty.min.js"></script>
					<!-- for iOS style toggle switch -->
					<script src="js/jquery.iphone.toggle.js"></script>
					<!-- autogrowing textarea plugin -->
					<script src="js/jquery.autogrow-textarea.js"></script>
					<!-- multiple file upload plugin -->
					<script src="js/jquery.uploadify-3.1.min.js"></script>
					<!-- history.js for cross-browser state change on ajax -->
					<script src="js/jquery.history.js"></script>
					<!-- application script for Charisma demo -->
					<script src="js/charisma.js"></script>
	</body>
</html>

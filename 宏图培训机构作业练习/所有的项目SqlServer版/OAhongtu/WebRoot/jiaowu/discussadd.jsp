<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">
	<base href="<%=basePath%>">
	<head>
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



<link rel="stylesheet"
			href="kindeditor-4.1.10/themes/default/default.css" />
		<script charset="utf-8" src="kindeditor-4.1.10/kindeditor-min.js"></script>
		<script type="text/javascript">
		var editor;
		KindEditor.ready(function(k){
			 editor=k.create("#kind_editor", {
				items : [
							'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
							'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
							'insertunorderedlist', '|', 'emoticons']
					});
					
			editor=k.create("#kind_editor1", {
				items : [
							'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
							'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
							'insertunorderedlist', '|', 'emoticons']
					});
		});
</script>

<SCRIPT type="text/javascript">
			function changes(){
				var ename = $("#ss").find("option:selected").html();//选中的值
				var tts=$("#tt").text();//文本域的值
				$("#tt").text(tts+$.trim(ename)+"    ");
			}
		</SCRIPT>
	</head>

	<body>
		<div class="ch-container">
			<div class="row">

				<div id="content" class="col-lg-10 col-sm-10" style="width: 100%;">
					<!-- content starts -->
					<div>
						<ul class="breadcrumb">
							<li>
								<a href="homepage(tea).jsp">首页</a>
							</li>
							<li>
								<a href="javascript:history.go(-1);">返回上一页</a>
							</li>
						</ul>
					</div>
					<!-- content starts -->
					<div class="row">
						<div class="box col-md-12">
							<div class="box-inner" style="height: 800px;">
								<div class="box-header well" data-original-title="">
									<h2>
										<i class="glyphicon glyphicon-edit"></i> 添加研讨会记录
									</h2>

								</div>
								<div class="box-content">
									<form role="form" action="chenru/disadd.action?" method="post"
										id="frm">

										<!-- 开始 -->
										<!-- 下拉框样式 -->
										<div class="box-content">
											<b>主持人：</b>
											<div class="controls"
												style="height: 30px; width: 250px; display: inline-block; margin-bottom: 0; vertical-align: middle; margin-left: 10px;">
												<select name="discuss.discompere" data-rel="chosen"
													style="width: 165px;">
													<option>
														--请选择主持人--
													</option>
													<c:forEach items="${listemp}" var="emp">
														<option value="${emp.eid }">
															${emp.ename }
														</option>
													</c:forEach>
												</select>
											</div>

											<!-- 下拉框样式 -->
											<b>记录人：</b>
											<div class="form-group"
												style="height: 30px; width: 250px; display: inline-block; margin-bottom: 0; vertical-align: middle; margin-left: 15px;">
												<select name="discuss.diswriter" data-rel="chosen"
													style="width: 165px;">
													<option>
														--请选择记录人--
													</option>
													<c:forEach items="${listemp}" var="emp">
														<option value="${emp.eid }">
															${emp.ename }
														</option>
													</c:forEach>
												</select>
											</div>
										</div>
										<!-- 时间日历框 -->
										<div class="box-content">
										<b>	时 间 ：</b>
											<div class="control-group"
												style="height: 40px; width: 200px; display: inline-block; margin-bottom: 0; vertical-align: middle; margin-left: 15px">
												<input type="text" class="form-control"
													name="discuss.distime" placeholder="请输入时间"
													onclick="WdatePicker({doubleCalendar:false,dateFmt:'yyyy-MM-dd'});">
											</div>

											<!-- 普通框 -->
											<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 地 点 ：</b>
											<div class="form-group"
												style="height: 40px; width: 300px; display: inline-block; margin-bottom: 0; vertical-align: middle; margin-left: 15px;">
												<input type="text" class="form-control"
													name="discuss.displace" placeholder="请输入地点" width="270px">
											</div>
										</div>

											<div class="box-content">
											<b>到场人员：</b>
											<div class="form-group"
												style="height: 25px; width: 260px; display: inline-block; margin-bottom: 0; vertical-align: middle; margin-left: 2px;">
											<select onchange="changes();" id="ss"  style="width:200px;" data-rel="chosen">
											<c:forEach items="${listemp}" var="emps">
												<option value="${emps.eid }" >
												${emps.ename}
												</option>
												</c:forEach>
											</select>
											</div>
											</div>
											
											<div class="box-content">
											<div class="form-group"
												style="height: 40px; width: 600px; display: inline-block; margin-bottom: 0; vertical-align: middle; margin-left: 15px;">
											<textarea id="tt" class="autogrow" rows="5" cols="105" style="margin-left:70px;" name="discuss.empid" placeholder="到场人员有："></textarea>
											</div> 
											</div>
<br/><br/><br/>
										<!-- 主题 普通框-->
										<div class="box-content">
										<b>	教研主题:</b>
											<div class="form-group"
												style="height: 40px; width: 660px; display: inline-block; margin-bottom: 0; vertical-align: middle; margin-left: 15px;">
												<input type="text" class="form-control"
													name="discuss.disname" placeholder="请输入主题">
											</div>
										</div>

										<!-- 文本域 -->
										<div class="box-content">
											<b>教研内容：</b>
											<div class="form-group"
												style="height: 40px; width: 300px; display: inline-block; margin-bottom: 0; vertical-align: middle; margin-left: 15px;">
												<textarea class="autogrow" cols="100" rows="7"
													name="discuss.dispro" placeholder="本次教研主要内容" id="kind_editor"></textarea>
											</div>
										</div>
										<br />
										<br />
										<br />
										<br />
										<br />
										<br />
										<!-- 文本域 -->
										<div class="box-content">
											<b>建议/意见：</b>
											<div class="control-group"
												style="height: 40px; width: 300px; display: inline-block; margin-bottom: 0; vertical-align: middle; margin-left: 15px;">
												<textarea class="autogrow" cols="100" rows="7"
													name="discuss.diskey" placeholder="对本次教研有何建议" id="kind_editor1"></textarea>
											</div>
										</div>

										<!-- 结束 -->
										<!-- submit提交按钮样式 -->
										<div class="box-content">
											<div class="control-group">
												<button type="submit" class="btn btn-default"
													style="width: 100px; margin-left: 320px; margin-top: 110px;">
													<b>添 加</b>
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
					<!-- 日期类型 -->
					<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
	</body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

		<title>My JSP 'rizhi.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<link rel="stylesheet" type="text/css"
			href="TimePick/jquery.datetimepicker.css" />
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
					
		});
</script>
	</head>

	<body>
		<jsp:include page="common.jsp"></jsp:include>
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

					<form action="liulirong/exam!jiaadd.action" method="post">
						<div class="row">
							<div class="box col-md-12">
								<div class="box-inner" style="height: 550px;">
									<div class="box-header well" data-original-title="">
										<h2>
											<i class="glyphicon glyphicon-edit"></i> 加班申请
										</h2>

									</div>
									<div class="box-content" style="margin-left: 250px">
										<span class="animated rubberBand"
											style="font-size: 36px; color: #0080c0;"> 加班申请表 </span>
									</div>

									<div class="box-content">
										<label for="exampleInputEmail1">姓名：</label>
										<div class="control-group"
											style="height: 30px; width: 300px; display: inline-block; margin-bottom: 0; vertical-align: middle; margin-left: 20px">
											<input type="hidden" name="jia.eid" value="${teacher.eid }">
											<input type="text" class="form-control" 
												placeholder="请输入姓名" style="width: 242px;" value="${teacher.ename }" disabled="disabled">
										</div>
										<label for="exampleInputEmail1">加班天数：</label>
										<div class="control-group"
											style="height: 30px; width: 140px; display: inline-block; margin-bottom: 0; vertical-align: middle; margin-left: 10px">
											<input type="text" class="form-control" name="jia.jday"
												placeholder="请输入天数" style="width: 130px;">
										</div>
										<b>天</b>
									</div>
									<div class="box-content">
										<label for="exampleInputEmail1">时间：</label>
										<div class="control-group"
											style="height: 30px; width: 250px; display: inline-block; margin-bottom: 0; vertical-align: middle; margin-left: 20px">
											<input type="text" class="form-control" name="jstart"
												placeholder="请输入开始时间" style="width: 242px;"
												id="datetimepicker">
										</div>
										<b>至</b>
										<div class="control-group"
											style="height: 30px; width: 240px; display: inline-block; margin-bottom: 0; vertical-align: middle; margin-left: 10px">
											<input type="text" class="form-control" name="jia.jend"
												placeholder="请输入结束时间" style="width: 242px;"
												onclick="WdatePicker({doubleCalendar:false,dateFmt:'yyyy-MM-dd'});">
										</div>

									</div>

									<div class="box-content" style="height: 130px;">
										<label for="exampleInputEmail1">加班说明：</label>
										<div class="control-group"
											style="height: 30px; width: 250px; display: inline-block; margin-bottom: 0; vertical-align: middle; margin-left: 10px">
											<textarea cols="85" rows="7" name="jia.jdesc" id="kind_editor"></textarea>
										</div>
									</div><br/><br/>
									<div class="box-content" style="margin-left: 30px">
										<b>望领导批准！</b>
									</div>
									<div class="box-content">
										<b>直属领导意见(签名)</b>
										<div
											style="height: 30px; width: 50px; display: inline-block; margin-bottom: 0; vertical-align: middle; margin-left: 10px;">
											<select data-rel="chosen" name="jia.jman"
												style="width: 170px;">
												<c:forEach items="${list}" var="h">
													<option value="${h.dmid }">
														${h.dmname }
													</option>
												</c:forEach>
											</select>
										</div>


										<div class="box-content">
											<div class="control-group">
												<button type="submit" class="btn btn-default"
													style="width: 100px; margin-left: 310px;margin-top:8px;">
													<b>添 加</b>
												</button>
											</div>
										</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- 日期类型 -->
		<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
		<!-- 日期类型 -->
		<script src="TimePick/jquery.js"></script>
		<script src="TimePick/jquery.datetimepicker.js"></script>
		<script type="text/javascript">
			$(function(){
				$('#datetimepicker').datetimepicker({
					lang:'ch',
					timepicker:false,
					format:'Y/m/d',
					formatDate:'Y/m/d',
					
				});
			});
		</script>
	</body>
</html>

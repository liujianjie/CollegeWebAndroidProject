<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

					<div class="row">
						<div class="box col-md-12">
							<div class="box-inner">
								<div class="box-header well" data-original-title="">
									<h2>
										<i class="glyphicon glyphicon-edit"></i>
										反馈
									</h2>

								</div>

								<div class="box-content" style="width:200px">
									
									<form name="frm" action="says/saysfankui" method="post">
										<input type="hidden" name="says.sayid" value="${says.sayid }">
										
										<div class="box-content" style="margin-top: 10px">
											<label for="exampleInputEmail1">
												反馈内容
											</label>
											<div class="control-group"
												style="height: 30px; width: 140px; display: inline-block; margin-bottom: 0; vertical-align: middle; margin-top: -40px; margin-left: 70px">
												<textarea rows="10" cols="100" name="says.sayback"  id="kind_editor"> 
                        						</textarea>
											</div>
										</div>
										<div class="box-content" style="margin-top:160px;">
											<div class="control-group">
												<button type="submit" class="btn btn-default"
													style="width: 100px; margin-left: 70px;">
													<b>反 馈</b>
												</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
						<!--/span-->

					</div>
				</div>
				<!--/row-->

				<!-- content ends -->
			</div>
			<!--/#content.col-md-0-->
		</div>
	</body>
</html>


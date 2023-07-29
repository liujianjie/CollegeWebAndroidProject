<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!-- 支出添加页面 -->

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

				<div id="content" class="col-lg-10 col-sm-10" style="width:100%;">
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
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-edit"></i> 添加支出信息</h2>

               
            </div>
            <div class="box-content">
                <form role="form" action="lcy/add2.action" method="post">
 <!-- 普通框样式 -->                 
                   <div class="box-content">
						<label class="control-label" for="selectError">&nbsp;支出项目：</label>
							<div class="controls"
												style="height: 30px; width: 250px; display: inline-block; margin-bottom: 0; vertical-align: middle; margin-left: 10px;">
				
							<select id="selectError" data-rel="chosen" style="width: 100px;"  name="zh.zhichu_xiangmu">
								<option value="0">员工工资</option>
								<option value="1">公司旅游</option>
								<option value="2">员工生日</option>
								<option value="3">年终奖</option>
								<option value="4">接待</option>
								<option value="5">办公用品</option>
								<option value="6">报销</option>
								<option value="7">其他</option>								
							</select>
						</div>
                   	</div>
                    
                    <div class="box-content">
                        	<label for="exampleInputEmail1">&nbsp;&nbsp;支出金额：</label>
                        	<div class="controls"
												style="height: 30px; width: 250px; display: inline-block; margin-bottom: 0; vertical-align: middle; margin-left: 3px;">
                     
                        	<input type="text" id="t1" class="form-control" id="ename" placeholder="请填入金额" style="width: 300px;"  name="zh.zhichu_jine">
                    	</div>
                    </div>
                    
                    <div class="box-content">
                        	<label for="exampleInputEmail1">&nbsp;&nbsp;经 手 人：</label>
                        	<div class="controls"
												style="height: 30px; width: 250px; display: inline-block; margin-bottom: 0; vertical-align: middle; margin-left: 10px;">
                        
                        	<input value="${teacher.ename }" readonly="readonly" type="text" id="t2" class="form-control" id="ename" style="width: 300px;"  name="zh.jingshouren">
                    	</div>
                    </div>
                    
                     <div class="box-content">
                        	<label for="exampleInputEmail1">&nbsp;&nbsp;备&nbsp;&nbsp;&nbsp;&nbsp;注：</label>
                        	<div class="controls"
												style="height: 30px; width: 250px; display: inline-block; margin-bottom: 0; vertical-align: middle; margin-left: 16px;">
                        
                        	<input type="text" class="form-control" id="ename" placeholder="可不填" style="width: 300px;" name="zh.beizhu">
                    	</div>
                    </div>
  
  
  					 <div class="box-content">
                        	<label for="exampleInputEmail1">&nbsp;&nbsp;支出时间：</label>
                        	<div class="controls"
												style="height: 30px; width: 250px; display: inline-block; margin-bottom: 0; vertical-align: middle; margin-left: 2px;">
                        	
                        	<input type="text" style="width: 300px;" placeholder="请选择时间"  class="form-control" id="b" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'});"    name="zh.zhichu_time"/>
                    	</div>
                    </div>

  <!-- submit提交按钮样式 -->                    
                    <div class="box-content">
						<div class="control-group">
                    		<button type="submit" onclick="return check();" class="btn btn-default" style="width: 100px; margin-left: 185px; margin-top: 25px;"><b>添 加</b></button>
                    	</div>
                    </div>
                </form>


            </div>
        </div>
    </div>
    <!--/span-->

</div><!--/row-->

    <!-- content ends -->
	
 		<!-- external javascript -->

		<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

		<!-- library for cookie management -->
		<script src="js/jquery.cookie.js"></script>
		<!-- calender plugin -->
		<script src='bower_components/moment/min/moment.min.js'></script>
		<script src='bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
		<!-- data table plugin -->
		<script src='js/jquery.dataTables.min.js'></script>

		<!-- select or dropdown enhancer -->
		<script src="bower_components/chosen/chosen.jquery.min.js"></script>
		<!-- plugin for gallery image view -->
		<script src="bower_components/colorbox/jquery.colorbox-min.js"></script>
		<!-- notification plugin -->
		<script src="js/jquery.noty.js"></script>
		<!-- library for making tables responsive -->
		<script src="bower_components/responsive-tables/responsive-tables.js"></script>
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

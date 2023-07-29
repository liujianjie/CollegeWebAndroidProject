<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>岗位列表</title>
<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description"
	content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

<link
	href="${pageContext.request.contextPath }/css/bootstrap.min.css?v=3.4.0"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/css/font-awesome.min.css?v=4.3.0"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/css/plugins/iCheck/custom.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/animate.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/css/style.min.css?v=3.2.0"
	rel="stylesheet">

</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<button type="button" class="btn btn-primary dim" onclick="location.href='${pageContext.request.contextPath}/hjx/toaddposi.do'">添加岗位</button>
		<div class="row">
			<c:forEach items="${posis}" var="posi">
				<div class="col-sm-4">
					<div class="contact-box">
						<a href="#">
							<div class="col-sm-4">
								<div class="text-center">
									<img alt="image" class="img-circle m-t-xs img-responsive"
										src="${pageContext.request.contextPath}/img/position.png">
									<div class="m-t-xs font-bold">${posi.pname}</div>
									
								</div>
								
							</div>
							<div class="col-sm-8">
								
								<p>
									<strong>岗位名称：</strong>
										<h3>
									<strong>${posi.pname}</strong>
									</h3>
									<button class="btn btn-danger " type="button"
										onclick="location.href='${pageContext.request.contextPath}/hjx/delposi.do?id=${posi.id }'"> <i class="fa fa-trash-o"></i> 删除</span>
									</button>
								</p>
								
							</div>
							
							<div class="clearfix"></div>
						</a>
					</div>
					
				</div>
			</c:forEach>
			 <!-- 		start 页脚	 -->
			<div class="col-sm-1"></div>
				<div class="btn-group col-sm-8">
				共${totalRow }条记录 ${currPage }/${totalPage }页
				<div class="col-sm-2">
					<input type="text" id="pageCount" value="${pageCount }" class="form-control" />
				</div>
				<a><button type="button" id="btn1" onclick="posilist(this);" class="btn btn-white">
				<i class="fa fa-chevron-left"></i>
				</button></a>
				<c:if test="${currPage-3>0}">
					<a><button id="btn2" onclick="posilist(this);" class="btn btn-white">${currPage-3}</button></a>
				</c:if>
				<c:if test="${currPage-2>0}">
					<a><button id="btn3" onclick="posilist(this);" class="btn btn-white">${currPage-2}</button></a>
				</c:if>
				<c:if test="${currPage-1>0}">
					<a><button id="btn4" onclick="posilist(this);" class="btn btn-white">${currPage-1}</button></a>
				</c:if>
					<a><button id="btn5" onclick="posilist(this);" class="btn btn-white  active">${currPage}</button></a>
				<c:if test="${currPage+1<=totalPage}">
					<a><button id="btn6" onclick="posilist(this);" class="btn btn-white">${currPage+1}</button></a>
				</c:if>
				<c:if test="${currPage+2<=totalPage}">
					<a><button id="btn7" onclick="posilist(this);" class="btn btn-white">${currPage+2}</button></a>
				</c:if>
				<c:if test="${currPage+3<=totalPage}">
					<a><button id="btn8" onclick="posilist(this);" class="btn btn-white">${currPage+3}</button></a>
				</c:if>
					<a><button type="button" id="btn9" onclick="posilist(this);" class="btn btn-white">
				<i class="fa fa-chevron-right"></i>
					</button></a>
			</div>
			<!-- 		end 页脚	 -->
		</div>
	</div>

	<script>
	
	function posilist(btn) {
		var id=btn.id;
		var pageCount=document.getElementById("pageCount").value;
		var currPage=${currPage};
		if(id=="btn1"||id=="btn4"){
			location.href="selposi.do?pageCount="+pageCount+"&currPage="+(currPage-1)+"&v=0";
		}else if(id=="btn2"){
			location.href="selposi.do?pageCount="+pageCount+"&currPage="+(currPage-3)+"&v=0";
		}else if(id=="btn3"){
			location.href="selposi.do?pageCount="+pageCount+"&currPage="+(currPage-2)+"&v=0";
		}else if(id=="btn5"){
			location.href="selposi.do?pageCount="+pageCount+"&currPage="+(currPage)+"&v=0";
		}else if(id=="btn7"){
			location.href="selposi.do?pageCount="+pageCount+"&currPage="+(currPage+2)+"&v=0";
		}else if(id=="btn8"){
			location.href="selposi.do?pageCount="+pageCount+"&currPage="+(currPage+3)+"&v=0";
		}else if(id=="btn9"||id=="btn6"){
			location.href="selposi.do?pageCount="+pageCount+"&currPage="+(currPage+1)+"&v=0";
		}
	}
	</script>

	<!-- 全局js -->
	<script
		src="${pageContext.request.contextPath }/js/jquery-2.1.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/bootstrap.min.js?v=3.4.0"></script>




	<!-- Peity -->
	<script
		src="${pageContext.request.contextPath }/js/plugins/peity/jquery.peity.min.js"></script>

	<!-- 自定义js -->
	<script
		src="${pageContext.request.contextPath }/js/content.min.js?v=1.0.0"></script>


	<!-- iCheck -->
	<script
		src="${pageContext.request.contextPath }/js/plugins/iCheck/icheck.min.js"></script>

	<!-- Peity -->
	<script
		src="${pageContext.request.contextPath }/js/demo/peity-demo.min.js"></script>

	<script>
		$(document).ready(function() {
			$('.i-checks').iCheck({
				checkboxClass : 'icheckbox_square-green',
				radioClass : 'iradio_square-green',
			});
		});
	</script>
</body>

</html>
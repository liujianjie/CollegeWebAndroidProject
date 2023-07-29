<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>H+ 后台主题UI框架 - FooTable</title>
<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description"
	content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

<link href="backgroundSystem/css/bootstrap.min.css?v=3.4.0"
	rel="stylesheet">
<link href="backgroundSystem/css/font-awesome.min.css?v=4.3.0"
	rel="stylesheet">
<link href="backgroundSystem/css/plugins/footable/footable.core.css"
	rel="stylesheet">

<link href="backgroundSystem/css/animate.min.css" rel="stylesheet">
<link href="backgroundSystem/css/style.min.css?v=3.2.0" rel="stylesheet">

</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">

		<div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>手续费记录(${count })</h5>

						<div class="ibox-tools">
							<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
							</a> <a class="close-link"> <i class="fa fa-times"></i>
							</a>
						</div>
					</div>
					<div class="ibox-content">

						<table class="footable table table-stripped toggle-arrow-tiny"
							data-page-size="8">
							<thead>
								<tr>
									<th data-toggle="true">用户名</th>
									<th>金额</th>
									<th>类型</th>
									<th>更改类型</th>
									<th>状态</th>
									<th>备注</th>
									<th>时间</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="list" varStatus="index">
									<tr>
										<td><c:forEach items="${user}" var="user">
												${list.user_id==user.userid?user.username:''}
											</c:forEach></td>
										<td>${list.fact_money }</td>
										<td>
											<c:if test="${list.fact_type == 1}">
												转账
											</c:if>
											<c:if test="${list.fact_type == 2}">
												交易
											</c:if>
										</td>
										<td>
											<c:if test="${list.fact_upd_money == null}">
												无
											</c:if>
											<c:if test="${list.fact_upd_money != null}">
												${list.fact_upd_money }
											</c:if>
										</td>
										<td>
											<c:if test="${list.fact_statu == 1}">
												<font color="#0000ff">已交</font>
											</c:if>
											<c:if test="${list.fact_statu == 2}">
												<font color="#ff0033">未交</font>
											</c:if>
										</td>
										<td>${list.fact_distribe }</td>
										<td><f:formatDate value="${list.fact_time }" /></td>
									</tr>
								</c:forEach>

							</tbody>
							<tfoot>
								<tr>
									<td colspan="5">
										<ul class="pagination pull-right"></ul>
									</td>
								</tr>
							</tfoot>
						</table>

					</div>
					</div>
			</div>
		</div>

		<!-- 全局js -->
		<script src="../backgroundSystem/js/jquery-2.1.1.min.js"></script>
		<script src="../backgroundSystem/js/bootstrap.min.js?v=3.4.0"></script>
		<script
			src="../backgroundSystem/js/plugins/footable/footable.all.min.js"></script>

		<!-- 自定义js -->
		<script src="../backgroundSystem/js/content.min.js?v=1.0.0"></script>
		<script>
			$(document).ready(function() {
		
				$('.footable').footable();
				$('.footable2').footable();
		
			});
		</script>

		<script type="text/javascript"
			src="../../../tajs.qq.com/stats@sId=9051096.jsp" charset="UTF-8"></script>
		<!--统计代码，可删除-->
</body>

</html>
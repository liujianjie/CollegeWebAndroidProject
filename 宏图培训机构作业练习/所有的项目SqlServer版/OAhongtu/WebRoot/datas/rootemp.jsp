<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'emplist.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<jsp:include page="common.jsp"></jsp:include>
  	
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
								<a href="#">员工权限管理</a>
							</li>
						</ul>
					</div>

					<div class="row">
						<div class="box col-md-12">
							<div class="box-inner">
								<div class="box-header well" data-original-title="">
									<h2>
										<i class="glyphicon glyphicon-user"></i> 员工权限管理
									</h2>

								</div>
								<div><br/></div>
									<table
										class="table table-striped table-bordered bootstrap-datatable datatable responsive">
										<thead>
											<tr>
												<th>
													员工ID
												</th>
												<th>
													姓名
												</th>
												<th>
													性别
												</th>
												<th>
													部门
												</th>
												<th>
													专业
												</th>
												<th>
													状态
												</th>
												<th>
													入职时间
												</th>
												
												<th>
													操作
												</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${list}" var="emp">
												<tr>
													<td>
														${emp.eid }
													</td>
													<td class="center">
														${emp.ename }
													</td>
													<td class="center">
														${emp.esex }
													</td>
													<td class="center">
														<c:forEach items="${dlist }" var="d">
															${emp.did==d.did?d.dname:'' }
														</c:forEach>
													</td>
													<td class="center">
														${emp.zhuanye }
													</td>
													<td class="center">
													<c:choose>
												    	<c:when test="${emp.estatus == 0 }">
												    		 <span class="label label-default">试用期</span>
												    	</c:when>
												    	<c:when test="${emp.estatus == 1 }">
												    		<span class="label label-success">已转正</span>
												    	</c:when>
												    	<c:when test="${emp.estatus == 2 }">
												    		<span class="label label-danger">已离职</span>
												    	</c:when> 
												    </c:choose>
													</td>
													<td class="center">
														<fmt:formatDate value="${emp.etry }" pattern="yyyy-MM-dd"/>
														
													</td>
													
													<td class="center">
														<a class="btn btn-success" href="liulirong/emp!rootemplist?userid=${emp.eid }"> <i
																class="glyphicon glyphicon-zoom-in icon-white"></i> 权限管理 </a>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
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
			
  </body>
</html>

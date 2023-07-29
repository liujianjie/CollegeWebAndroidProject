<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
								<a href="homepage2.jsp">首页</a>
							</li>
							<li>
								<a href="#">项目答辩管理</a>
							</li>
							
						</ul>
					</div>
					
					<div class="row">
						<div class="box col-md-12">
							<div class="box-inner">
								<div class="box-header well" data-original-title="">
									<h2>
										<i class="glyphicon glyphicon-th-list"></i>
										${classes.classname }的${course.couname }成绩
									</h2>

								</div>
								
								<div class="box-content">
									<div class="alert alert-info" style="height:70px">
										<!-- 去list啊 -->
										<form action="prj/prjlist2" method="post">
											<label for="exampleInputEmail1">
												<b>班级</b>
											</label>
											<select disabled="disabled"  id="selectError"
															data-rel="chosen" style="width: 100px;">
												<c:forEach items="${clslist}" var="cls">
													<option value="${cls.CLASSID }" ${cls.CLASSID==classes.classid?"selected":""}>
														${cls.CLASSNAME }
													</option>

												</c:forEach>
											</select>
											<label for="exampleInputEmail1">
												<b>科目</b>
											</label>
											<select name="couid" id="selectError" data-rel="chosen"
												style="width: 100px;">
												<c:forEach items="${coslist}" var="cos">
													<option value="${cos.couid }" ${cos.couid==course.couid?"selected":""}>
														${cos.couname }
													</option>

												</c:forEach>
											</select> 
											<button type="submit"class="btn btn-success"><i class="glyphicon glyphicon-zoom-in icon-white"></i>查询</button>
										</form>
									</div>
									
									<hr>
									
									<c:if test="${size!=0}">
									<table id="table"
										class="table table-striped table-bordered bootstrap-datatable datatable responsive">
										<thead>
											<tr>
												<th>
													序号
												</th>
												<th>
													班级
												</th>
												<th>
													科目
												</th>
												<th>
													指导老师
												</th>
												<th>
													评委老师
												</th>
												<th>
													演示日期
												</th>
												<th>
													操作
												</th>
											</tr>
										</thead>
										<tbody>
										<%int i=1; %>
										<c:forEach items="${list}" var="prj">
										
											<tr>
												<td >
													<%=i %>
												</td>
												<td class="center">
													<c:forEach items="${clslist}" var="cls">
														<c:if test="${cls.CLASSID==prj.PCLASSID}">
															${cls.CLASSNAME }
														</c:if>
													</c:forEach>
													
												</td>
											
												<td class="center">
													<c:forEach items="${coslist}" var="cos">
														<c:if test="${cos.couid==prj.PNAME }">
															${cos.couname }
														</c:if>
													</c:forEach>
													
												</td>
												<td class="center">
													<c:forEach items="${emplist}" var="emp">
														<c:if test="${emp.eid==prj.PTEACHER}">
															${emp.ename }
														</c:if>
													</c:forEach>
													
												</td>
												<td class="center">
													<c:forEach items="${emplist}" var="emp">
														<c:if test="${emp.eid==prj.PTEACHERS}">
															${emp.ename }
														</c:if>
													</c:forEach>
													
												</td>
												<td class="center">
													${prj.PDATE }
													
												</td>
												<td class="center" width="10%">
													<a class="btn btn-success" href="prj/dfslist?classid=${prj.PCLASSID }&couid=${prj.PNAME }" target="_blank"> <i
														class="glyphicon glyphicon-zoom-in icon-white"></i> 成绩 </a>
												</td>
											</tr>
											<%i++; %>										
										</c:forEach>
										</tbody>
									</table>
									</c:if>
									<c:if test="${size==0}">
										<b>这个班的这门课程答辩成绩不存在,请选择其它科目</b>
									</c:if>
									
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


<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>p2p网贷平台</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="<%=path%>/foregroundSystem/css/common.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="<%=path%>/foregroundSystem/css/user.css" />
<script type="text/javascript"
	src="<%=path%>/foregroundSystem/script/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=path%>/foregroundSystem/script/common.js"></script>
<script src="<%=path%>/foregroundSystem/script/user.js"
	type="text/javascript"></script>
<link rel="icon" href="<%=path%>/foregroundSystem/images/s27188837.jpg"
	mce_href="<%=path%>/foregroundSystem/images/s27188837.jpg"
	type="image/x-icon">
</head>
<body>
	<header>
	<div class="header-top min-width">
		<div class="container fn-clear">
			<strong class="fn-left">咨询热线：400-668-6698<span
				class="s-time">服务时间：9:00 - 18:00</span></strong>
			<ul class="header_contact">
				<li class="c_1"><a class="ico_head_weixin" id="wx"></a>
					<div class="ceng" id="weixin_xlgz" style="display: none;">
						<div class="cnr">
							<img src="images/code.png">
						</div>
						<b class="ar_up ar_top"></b> <b class="ar_up_in ar_top_in"></b>
					</div></li>
				<li class="c_2"><a href="#" target="_blank" title="官方QQ"
					alt="官方QQ"><b class="ico_head_QQ"></b></a></li>
				<li class="c_4"><a href="#" target="_blank" title="新浪微博"
					alt="新浪微博"><b class="ico_head_sina"></b></a></li>
			</ul>
			<c:if test="${user.username == null}">
			<ul class="fn-right header-top-ul">
					<li><a href="<%=path%>/Borrow/selBorrowMoneySomeList.action"
						class="app">返回首页</a></li>
					<li>
						<div class="">
							<a href="<%=path%>/foregroundSystem/register.jsp"
								class="c-orange" title="免费注册">免费注册</a>
						</div>
					</li>
					<li>
						<div class="">
							<a href="<%=path%>/foregroundSystem/login.jsp" class="js-login"
								title="登录">登录</a>
						</div>
					</li>
				</ul>
			</c:if>
			<c:if test="${user.username != null }">
				<ul class="fn-right header-top-ul">
					<li><a href="<%=path%>/Borrow/selBorrowMoneySomeList.action"
						class="app">返回首页</a></li>
					<li>
						<div class="">
							<a href="<%=path%>/SelHuiKuan.action" class="c-orange"
								title="我的账户">${user.username }</a>
						</div>
					</li>
					<li>
						<div class="">
							<a href="<%=path%>/user/remove.action" class="js-login"
								title="退出">退出</a>
						</div>
					</li>
				</ul>
			</c:if>
		</div>
	</div>
	<div class="header min-width">
		<div class="container">
			<div class="fn-left logo">
				<a class="" href="index.jsp"> <img
					src="<%=path%>/foregroundSystem/images/logo.png" title="">
				</a>
			</div>
			<ul class="top-nav fn-clear">
				<li><a href="<%=path%>/Borrow/selBorrowMoneySomeList.action">首页</a></li>
				<li><a
					href="<%=path%>/Borrow/selMoreBorrowMoneySomeList.action?cpage=1"
					class="">我要投资</a></li>
				<li class="on"><a href="<%=path%>/foregroundSystem/borrow.jsp"
					class="">我要借款</a></li>
				<li><a href="<%=path%>/foregroundSystem/help.jsp">安全保障</a></li>
				<li class="top-nav-safe"><a href="<%=path%>/SelHuiKuan.action">我的账户</a></li>
				<li><a href="<%=path%>/foregroundSystem/jianjie.jsp">关于我们</a></li>
			</ul>
		</div>
	</div>
	</header>
	<!--个人中心-->
	<div class="wrapper wbgcolor">
		<div class="w1200 personal">
			<div class="credit-ad">
				<img src="<%=path%>/foregroundSystem/images/clist1.jpg" width="1200"
					height="96">
			</div>
			<div id="personal-left" class="personal-left">
				<ul>
					<li><span><a href="<%=path%>/SelHuiKuan.action"><i
								class="dot dot1"></i>账户总览</a></span></li>
					<li><span><a
							style="font-size:14px;text-align:center;width:115px;padding-right:35px;"
							href="<%=path%>/mr_list.action">资金记录</a></span></li>
					<li><span><a
							style="font-size:14px;text-align:center;width:115px;padding-right:35px;"
							href="<%=path%>/TenderRecordList.action">投资记录</a></span></li>
					<li class="pleft-cur"><span><a
							style="font-size:14px;text-align:center;width:115px;padding-right:35px;"
							href="<%=path%>/Borrow/selBorrowMoney.action">借款记录</a></span></li>
					<li class=""><span><a
							href="${pageContext.request.contextPath}/bank/selbank.action"><i
								class="dot dot02"></i>银行卡管理</a> </span></li>
					<li><span><a href="<%=path%>/selBank.action"><i
								class="dot dot03"></i>充值</a></span></li>
					<li class=""><span><a
							href="<%=path%>/foregroundSystem/personal_tixian_1.jsp"><i
								class="dot dot04"></i>提现</a></span></li>
					<li style="position:relative;"><span> <a
							href="<%=path%>/foregroundSystem/personal_xitongxiaoxi.jsp"><i
								class="dot dot08"></i>系统信息 </a>
					</span></li>
					<li><span><a
							href="<%=path%>/foregroundSystem/personal_zhanghushezhi.jsp"><i
								class="dot dot09"></i>账户设置</a></span></li>
					<li><span><a
							href="${pageContext.request.contextPath}/rengzheng/sel.action"><i
								class="dot dot09"></i>资料上传</a></span></li>
				</ul>
			</div>
			<style type="text/css">
.invest-tab .on  a {
	color: #fff;
}
</style>
			<div class="personal-main">
				<div class="personal-investnote">
					<h3>
						<i>借款记录</i>
					</h3>
					<div class="investnote-money">
						<span><b class="fb">累计借款</b><br> <i>${ljjk} </i> 元 </span> <span><b
							class="fb">累计利息</b><br> <i class="c-pink">${ljlx}</i> 元 </span>
					</div>
					<form id="form" name="form" method="post" action="">
						<script type="text/javascript">clearPage = function() {
								PrimeFaces.ab({
									source : 'form:j_idt82',
									formId : 'form',
									process : 'form:j_idt82',
									params : arguments[0]
								});
							}
						</script>
						<span id="form:dataTable">
							<div class="invest-tab">
								<ul>
									<li class="on"><a href="##" title="我的借款">我的借款</a></li>
									<li><a href="##" title="还款中">还款中</a></li>
									<li><a href="##" title="已还款">已还款</a></li>
								</ul>
							</div>
							<div class="investnote-list" id="jiekuan">
								<div class="investnote-contitle">
									<span class="investnote-w1 fb">交易时间</span> <span
										class="investnote-w2 fb">项目</span> <span
										class="investnote-w3 fb">状态</span> <span
										class="investnote-hbw4 fb">我的借款</span> <span
										class="investnote-hbw5 fb">我的利息</span> <span
										class="investnote-hbw6 fb">操作</span>
								</div>
								<ul>
									<c:forEach items="${borrlist }" var="bw">
										<c:if
											test="${bw.statu==1||bw.statu==2||bw.statu==3||bw.statu==5 }">
											<li><span class="investnote-w1"><fmt:formatDate
														value="${bw.borrow_time }" pattern="yyyy-MM-dd" /></span> <span
												class="investnote-w2">${bw.borrow_bt }</span> <span
												class="investnote-w3"> <c:choose>
														<c:when test="${bw.statu==1 }">
															<font color="pink">审核中</font>
														</c:when>
														<c:when test="${bw.statu==2 }">
															<a
																href="<%=path %>/Borrow/getBorrowMoney.action?id=${bw.b_id}"><font
																color="green">发布中</font></a>
														</c:when>
														<c:when test="${bw.statu==3 }">
															<a
																href="<%=path %>/Borrow/getBorrowMoney.action?id=${bw.b_id}"><font
																color="blue">满标</font></a>
														</c:when>
														<c:when test="${bw.statu==5 }">
															<font color="red">借款失败</font>
														</c:when>
													</c:choose></span> <span class="investnote-hbw4">${bw.b_money }</span> <span
												class="investnote-hbw5"><fmt:formatNumber
														type="number" value="${bw.should_money-bw.b_money}"
														pattern="0.00" maxFractionDigits="2" /></span> <span
												class="investnote-hbw6"> <c:choose>
														<c:when test="${bw.statu==2 }">
															<a
																href="<%=path %>/Borrow/getBorrowMoney.action?id=${bw.b_id}"><font
																color="green">查看</font></a>
														</c:when>
														<c:when test="${bw.statu==3 }">
															<a
																href="<%=path %>/Borrow/getBorrowMoney.action?id=${bw.b_id}"><font
																color="blue">查看</font></a>
														</c:when>
													</c:choose></span></li>
										</c:if>
									</c:forEach>
									<c:if test="${empty borrlist}">
										<div
											style=" width:760px;height:200px;padding-top:100px; text-align:center;color:#d4d4d4; font-size:16px;">
											<img src="<%=path%>/foregroundSystem/images/nondata.png"
												width="60" height="60"><br> <br> 暂无借款记录
										</div>
									</c:if>
								</ul>
							</div>
							<div class="investnote-list" id="huankuan" style="display: none">
								<div class="investnote-contitle">
									<span class="investnote-w1 fb">交易时间</span> <span
										class="investnote-w2 fb">项目</span> <span
										class="investnote-w3 fb">状态</span> <span
										class="investnote-hbw4 fb">我的借款</span> <span
										class="investnote-hbw5 fb">我的利息</span> <span
										class="investnote-hbw6 fb">操作</span>
								</div>
								<ul>
									<c:forEach items="${borrlist }" var="bw">
										<c:if test="${bw.statu==4 }">
											<li><span class="investnote-w1"><fmt:formatDate
														value="${bw.borrow_time }" pattern="yyyy-MM-dd" /></span> <span
												class="investnote-w2">${bw.borrow_bt }</span> <span
												class="investnote-w3"><font color="red">还款中</font></span> <span
												class="investnote-hbw4">${bw.b_money }</span> <span
												class="investnote-hbw5"> <fmt:formatNumber
														type="number" value="${bw.should_money-bw.b_money}"
														pattern="0.00" maxFractionDigits="2" /></span> <span
												class="investnote-hbw6"><a
													href="<%=path %>/Borrow/SeeMyDetailRepayment.action?b_id=${bw.b_id}">详情</a></span></li>
										</c:if>
									</c:forEach>
									<c:if test="${empty borrlist}">
										<div
											style=" width:760px;height:200px;padding-top:100px; text-align:center;color:#d4d4d4; font-size:16px;">
											<img src="<%=path%>/foregroundSystem/images/nondata.png"
												width="60" height="60"><br> <br> 暂无还款记录
										</div>
									</c:if>
								</ul>
							</div>

							<div class="investnote-list" id="yihuan" style="display: none">
								<div class="investnote-contitle">
									<span class="investnote-w1 fb">交易时间</span> <span
										class="investnote-w2 fb">项目</span> <span
										class="investnote-w3 fb">状态</span> <span
										class="investnote-hbw4 fb">我的借款</span> <span
										class="investnote-hbw5 fb">我的利息</span> <span
										class="investnote-hbw6 fb">操作</span>
								</div>
								<ul>
									<c:forEach items="${borrlist }" var="bw">
										<c:if test="${bw.statu==6 }">
											<li><span class="investnote-w1"><fmt:formatDate
														value="${bw.borrow_time }" pattern="yyyy-MM-dd" /></span> <span
												class="investnote-w2">${bw.borrow_bt }</span> <span
												class="investnote-w3"><font color="red">已还款</font></span> <span
												class="investnote-hbw4">${bw.b_money }</span> <span
												class="investnote-hbw5"> <fmt:formatNumber
														type="number" value="${bw.should_money-bw.b_money}"
														pattern="0.00" maxFractionDigits="2" /></span> <span
												class="investnote-hbw6"><a
													href="<%=path %>/Borrow/SeeMyDetailRepayment.action?b_id=${bw.b_id}">详情</a></span></li>

											<c:if test="${empty borrlist}">
												<div
													style=" width:760px;height:200px;padding-top:100px; text-align:center;color:#d4d4d4; font-size:16px;">
													<img src="<%=path%>/foregroundSystem/images/nondata.png"
														width="60" height="60"><br> <br> 暂无已还记录
												</div>
											</c:if>
										</c:if>
									</c:forEach>

								</ul>
							</div>
						</span>
					</form>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<!--网站底部-->
	<div id="footer" class="ft">
		<div class="ft-inner clearfix">
			<div class="ft-helper clearfix">
				<dl>
					<dt>关于我们</dt>
					<dd>
						<a href="jianjie.jsp">公司简介</a><a href="tuandui.jsp">管理团队</a><a
							href="wangzhangonggao.jsp">网站公告</a>
					</dd>
				</dl>
				<dl>
					<dt>相关业务</dt>
					<dd>
						<a href="list.jsp">我要投资</a><a href="borrow.jsp">我要借款</a>
					</dd>
				</dl>
				<dl>
					<dt>帮助中心</dt>
					<dd>
						<a href="help.jsp">新手入门</a><a href="pesonal_index.jsp">我的账户</a><a
							href="list.jsp">债权转让</a>
					</dd>
				</dl>
				<dl>
					<dt>联系我们</dt>
					<dd>
						<a href="lianxi.jsp">联系我们</a>
					</dd>
				</dl>
			</div>
			<div class="ft-service">
				<dl>
					<dd>
						<p>
							<strong>400-660-1268</strong><br> 工作日 9:00-22:00<br>
							官方交流群:<em>12345678</em><br> 工作日 9:00-22:00 / 周六 9:00-18:00<br>
						</p>
						<div class="ft-serv-handle clearfix">
							<a class="icon-hdSprite icon-ft-sina a-move a-moveHover"
								title="团团赚新浪微博" target="_blank" href="#"></a><a
								class="icon-hdSprite icon-ft-qqweibo a-move a-moveHover"
								title="团团赚腾讯微博" target="_blank" href="#"></a><a
								class="icon-ft-qun a-move a-moveHover" title="团团赚QQ群"
								target="_blank" href="#"></a><a
								class="icon-hdSprite icon-ft-email a-move a-moveHover mrn"
								title="阳光易贷email" target="_blank" href="mailto:xz@yirenbao.com"></a>
						</div>
					</dd>
				</dl>
			</div>
			<div class="ft-wap clearfix">
				<dl>
					<dt>官方二维码</dt>
					<dd>
						<span class="icon-ft-erweima"><img
							src="<%=path%>/foregroundSystem/images/code.png"
							style="display: inline;"></span>
					</dd>
				</dl>
			</div>
		</div>
		<div class="ft-record">
			<div class="ft-approve clearfix">
				<a class="icon-approve approve-0 fadeIn-2s" target="_blank" href="#"></a><a
					class="icon-approve approve-1 fadeIn-2s" target="_blank" href="#"></a><a
					class="icon-approve approve-2 fadeIn-2s" target="_blank" href="#"></a><a
					class="icon-approve approve-3 fadeIn-2s" target="_blank" href="#"></a>
			</div>
			<div class="ft-identity">
				©2015 团团赚 All rights reserved&nbsp;&nbsp;&nbsp;<span
					class="color-e6">|</span>&nbsp;&nbsp;&nbsp;安徽省团团赚投资管理有限公司&nbsp;&nbsp;&nbsp;<span
					class="color-e6">|</span>&nbsp;&nbsp;&nbsp;<a target="_blank"
					href="http://www.jspsucai.com">皖ICP备12345678号-1</a>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$("a").click(function() {
			var a1 = $(this).html();
			switch (a1) {
			case "我的借款":
				$('.invest-tab').find('li').removeAttr('class');
				$(this).parent('li').click().attr('class', 'on');
				$("#jiekuan").show();
				$("#huankuan").attr("style", "display:none");
				$("#yihuan").attr("style", "display:none");
				break;
			case "还款中":
				$('.invest-tab').find('li').removeAttr('class');
				$(this).parent('li').click().attr('class', 'on');
				$("#jiekuan").attr("style", "display:none");
				$("#huankuan").show();
				$("#yihuan").attr("style", "display:none");
				break;
			case "已还款":
				$('.invest-tab').find('li').removeAttr('class');
				$(this).parent('li').click().attr('class', 'on');
				$("#jiekuan").attr("style", "display:none");
				$("#huankuan").attr("style", "display:none");
				$("#yihuan").attr("style", "display");
				break;
			}
		});
	</script>
</body>
</html>

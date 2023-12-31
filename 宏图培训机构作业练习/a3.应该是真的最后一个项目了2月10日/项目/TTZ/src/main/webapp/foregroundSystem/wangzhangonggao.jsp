<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link href="<%=path%>/foregroundSystem/css/about.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript"
	src="<%=path%>/foregroundSystem/script/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=path%>/foregroundSystem/script/common.js"></script>
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
			<ul class="fn-right header-top-ul">
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
			</ul>
		</div>
	</div>
	<div class="header min-width">
		<div class="container">
			<div class="fn-left logo">
				<a class="" href="index.jsp"> <img src="images/logo.png"
					title="">
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
	<!--关于我们-->
	<div class="bg">
		<div class="contain" id="tabs" style="margin:0 auto;">
			<div class="text-nav">
				<ul class="clearfix">
					<li class="selected"><a class="text-link"
						href="wangzhangonggao.jsp">网站公告</a></li>
					<li><a class="text-link" href="meiti.jsp">媒体报道</a></li>
					<li><a class="text-link" href="jianjie.jsp">公司简介</a></li>
					<li><a class="text-link" href="tuandui.jsp">管理团队</a></li>
					<li><a class="text-link" href="huoban.jsp">合作伙伴</a></li>
					<li><a class="text-link" href="fengcai.jsp">团队风采</a></li>
					<li><a class="text-link" href="##">法律政策</a></li>
					<li><a class="text-link" href="shemgming.jsp">法律声明</a></li>
					<li><a class="text-link" href="shuoming.jsp">资费说明</a></li>
					<li><a class="text-link" href="zhaoxiannashi.jsp">招贤纳士</a></li>
					<li><a class="text-link" href="lianxi.jsp">联系我们</a></li>
				</ul>
			</div>
			<div class="text-box">
				<div class="text-content" id="text-content">
					<h1 class="title">网站公告</h1>
					<ul class="clearfix mt20 new-list">
						<li class="clearfix list-item"><a href="gonggaoxx.jsp">9月14日最新理财产品预告</a>
							<span>2015-09-12</span></li>
						<li class="clearfix list-item"><a href="gonggaoxx.jsp">豆兑换规则</a>
							<span>2015-09-12</span></li>
						<li class="clearfix list-item"><a href="gonggaoxx.jsp">9月12日最新理财产品介绍</a>
							<span>2015-09-12</span></li>
						<li class="clearfix list-item"><a href="gonggaoxx.jsp">9月11日最新理财产品介绍</a>
							<span>2015-09-11</span></li>
						<li class="clearfix list-item"><a href="gonggaoxx.jsp">9月10日最新理财产品预告</a>
							<span>2015-09-09</span></li>
						<li class="clearfix list-item"><a href="gonggaoxx.jsp">9月9日最新理财产品介绍</a>
							<span>2015-09-09</span></li>
						<li class="clearfix list-item"><a href="gonggaoxx.jsp">9月8日最新理财产品预告</a>
							<span>2015-09-07</span></li>
						<li class="clearfix list-item"><a href="gonggaoxx.jsp">9月7日最新理财产品预告</a>
							<span>2015-09-06</span></li>
						<li class="clearfix list-item"><a href="gonggaoxx.jsp">9月6日最新理财产品预告</a>
							<span>2015-09-05</span></li>
					</ul>
					<div class="page">
						<span class="all">共有163条信息</span><span class="count"></span>
						<div class="fr pages">
							<span data-page="1" class="currents">1</span><a data-page="2"
								href="#">2</a><a data-page="3" href="#">3</a><a data-page="4"
								href="#">4</a><a data-page="5" href="#">5</a><a data-page="6"
								href="#">6</a><span>...</span><a data-page="16" href="#">16
							</a><a data-page="17" href="#">17 </a><a data-page="2" class="next"
								href="#">下一页</a><a data-page="17" class="last" href="#">尾页</a>
						</div>
					</div>
				</div>
			</div>
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
						<span class="icon-ft-erweima"><img src="images/code.png"
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
					href="http://www.htmlsucai.com">皖ICP备12345678号-1</a>
			</div>
		</div>
	</div>
</body>
</html>

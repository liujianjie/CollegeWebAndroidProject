<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<link rel="stylesheet" type="text/css"
	href="<%=path%>/foregroundSystem/css/jquery.datetimepicker.css" />
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
							<img src="<%=path%>/foregroundSystem/images/code.png">
						</div>
						<b class="ar_up ar_top"></b> <b class="ar_up_in ar_top_in"></b>
					</div></li>
				<li class="c_2"><a href="#" target="_blank" title="官方QQ"
					alt="官方QQ"><b class="ico_head_QQ"></b></a></li>
				<li class="c_4"><a href="#" target="_blank" title="新浪微博"
					alt="新浪微博"><b class="ico_head_sina"></b></a></li>
			</ul>
			<ul class="fn-right header-top-ul">
				<li><a href="<%=path%>/Borrow/selBorrowMoneySomeList.action"
					class="app">返回首页</a></li>
				<li>
					<div class="">
						<a href="<%=path%>/foregroundSystem/register.jsp" class="c-orange"
							title="免费注册">免费注册</a>
					</div>
				</li>
				<li>
					<div class="">
						<a href="<%=path%>/foregroundSystem/login.jsp" class="js-login"
							title="登录">登录</a>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<div class="header min-width">
		<div class="container">
			<div class="fn-left logo">
				<a class="" href="<%=path%>/foregroundSystem/index.jsp"> <img
					src="images/logo.png" title="">
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
				<img src="<%=path%>/foregroundSystem/images/clist1.jpg" width="1000"
					height="80">
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
					<li><span><a
							style="font-size:14px;text-align:center;width:115px;padding-right:35px;"
							href="<%=path%>/Borrow/selBorrowMoney.action">借款记录</a></span></li>
					<li class=""><span><a
							href="${pageContext.request.contextPath}/bank/selbank.action"><i
								class="dot dot02"></i>银行卡管理</a> </span></li>
					<li><span><a
							href="<%=path %>/selBank.action"><i
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
			<label id="typeValue" style="display:none;"> </label>
			<style type="text/css">
.wdhb-tab .on  a {
	color: #fff;
}
</style>
			<div class="personal-main">
				<div class="personal-zqzr personal-xtxx" style="min-height: 500px;">
					<h3>
						<i>我的红包</i>
					</h3>
					<div class="lx-wdhb">
						<span class="pay-title">兑换红包</span> <span class="pay-number">
							<form id="codeForm" name="codeForm" method="post" action="">
								<input id="codeForm:code" type="text" name="codeForm:code"
									class="pay-money-txt"> <input type="submit"
									name="codeForm:j_idt73" value="兑换" class="btn-dh"> <span
									class="cz-error" style="display:none;"> <span
									class="error">红包兑换码不能为空！</span>
								</span>
							</form> <script>
								//<![CDATA[  
								$(function() {
									if (true) {
										$("#codeForm\\:code").val("输入验证码，兑换相应面值的红包");
									}
									$("#codeForm\\:code").blur(function() {
										var code = $(this).val();
										if (undefined == code || null == code || "" == code || "输入验证码，兑换相应面值的红包" == code) {
											$(this).val("输入验证码，兑换相应面值的红包");
											$(".cz-error").css({
												"display" : "block"
											});
										}
									});
									$("#codeForm\\:code").focus(function() {
										$(".cz-error").css({
											"display" : "none"
										});
										var code = $(this).val();
										if (undefined != code && null != code && "输入验证码，兑换相应面值的红包" == code) {
											$(this).val("");
										}
									});
								})
							
								function checkExchangeCode() {
									var code = $("#codeForm\\:code").val();
									if (undefined == code || null == code || "" == code || "输入验证码，兑换相应面值的红包" == code) {
										$(this).val("输入验证码，兑换相应面值的红包");
										$(".cz-error").css({
											"display" : "block"
										});
										return false;
									}
									return true;
								}
								//]]>
							</script>
						</span>
					</div>
					<form id="form" name="form" method="post" action="">
						<script type="text/javascript">clearPage = function() {
								PrimeFaces.ab({
									source : 'form:j_idt76',
									formId : 'form',
									process : 'form:j_idt76',
									params : arguments[0]
								});
							}
						</script>
						<span id="form:dataTable">
							<div id="wdhb-tab" class="wdhb-tab">
								<ul>
									<li class="on"><a href="#" title="未使用">未使用 </a></li>
									<li><a href="#" title="已使用">已使用 </a></li>
									<li><a href="#" title="已过期">已过期 </a></li>
								</ul>
							</div>
							<div class="wdhb-title">
								<span class="wdhb-name">红包名称</span><span class="wdhb-con">红包简介</span><span
									class="wdhb-deadline">截止日期</span> <span class="wdhb-status">状态</span>
							</div>
							<div class="zqzr-list">
								<ul>
									<li><span class="wdhb-name">现金50元</span><span
										class="wdhb-con">可以作为投资使用</span><span class="wdhb-deadline">2015-10-1</span>
										<span class="wdhb-status"><a href="#">未使用</a></span></li>
									<li><span class="wdhb-name">现金50元</span><span
										class="wdhb-con">可以作为投资使用</span><span class="wdhb-deadline">2015-10-1</span>
										<span class="wdhb-status"><a href="#">未使用</a></span></li>
									<li><span class="wdhb-name">现金50元</span><span
										class="wdhb-con">可以作为投资使用</span><span class="wdhb-deadline">2015-10-1</span>
										<span class="wdhb-status"><a href="#">未使用</a></span></li>
								</ul>
							</div> <!--<div style="float:left; width:760px;height:200px;padding-top:100px; text-align:center;color:#d4d4d4; font-size:16px;">
					 <img src="images/nondata.png" width="60" height="60"><br><br>
					   暂无红包记录</div>-->
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
	<script src="script/jquery.datetimepicker.js" type="text/javascript"></script>
	<script src="script/datepicker.js" type="text/javascript"></script>
</body>
</html>

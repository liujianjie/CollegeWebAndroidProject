<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
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
			<strong class="fn-left">咨询热线：400-848-6698<span
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
				<a class="" href="/"> <img src="images/logo.png" title="">
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
				<img src="images/clist1.jpg" width="1200" height="96">
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
			<style>
/*获取验证码*/
a.hqyzm {
	float: left;
	background: #ea524a;
	width: 125px;
	height: 35px;
	line-height: 35px;
	font-size: 14px;
	margin-left: 6px;
	text-align: center;
	color: #fff;
	border-radius: 2px;
}

a.hqyzm:hover {
	color: #fff;
	background: #ff8882;
}
/*获取验证码后在倒计时中的样式*/
a.hqyzmAfter {
	float: left;
	background: #c0c0c0;
	width: 125px;
	height: 35px;
	line-height: 35px;
	font-size: 14px;
	margin-left: 6px;
	text-align: center;
	color: #fff;
	border-radius: 2px;
}
</style>
			<script type="text/javascript">
				//<![CDATA[
				var flag = false;
				function sCode(xhr, status, args, args2) {
					if (!args.validationFailed) {
						$("#sendCode").hide();
						$("#sendCodeGrey").show();
						/* if(flag && $("#sendCode").is(":hidden")){
							return;
						} */
						flag = true;
						var mobileNumber = $("#form\\:mobileNumber").val().replace(/(^\s*)|(\s*$)/g, "");
						if ("dx" == args2) {
							$("#mobileMsg").html(mobileNumber.substring(0, 3) + "****" + mobileNumber.substring(7, 11));
							$("#authCodeMsg").css({
								"display" : ""
							});
							$("#authCodeMsg2").css({
								"display" : "none"
							});
						} else if ("yy" == args2) {
							$("#mobileMsg2").html(mobileNumber.substring(0, 3) + "****" + mobileNumber.substring(7, 11));
							$("#authCodeMsg").css({
								"display" : "none"
							});
							$("#authCodeMsg2").css({
								"display" : ""
							});
						}
						timer("sendAuthCodeBtn1", {
							"count" : 60,
							"animate" : true,
							initTextBefore : "后可重新操作",
							initTextAfter : "秒",
							callback : function() {
								$("#sendCode").show();
								$("#sendCodeGrey").hide();
								flag = false;
								$("#authCodeMsg").css({
									"display" : "none"
								});
								$("#authCodeMsg2").css({
									"display" : "none"
								});
							}
						}).begin();
					}
				}
				//验证验证码是否为空
				function phoneValidate() {
					var authCode = $("#form\\:authCode").val();
					var nullFlag = (authCode == "");
					if (nullFlag) {
						$("#form\\:authCode_message").remove();
						var $span = $("<span id=form\:authCode_message class=error>请输入验证码</span>");
						$("#authCodeErrorDiv").append($span);
						return false;
					}
			
					return true;
				}
				$(document).ready(function() {
					var investorValiCodeError = $("#investorValiCodeError").val();
					if (investorValiCodeError.length > 0) {
						$("#form\\:formauthCode_message").remove();
						var $span = $("<span id=form\:formauthCode_message class=error>" + investorValiCodeError + "</span>");
						$("#authCodeErrorDiv").append($span);
					}
				});
			
			
			
				function showSpan(op) {
					$("body").append("<div id='mask'></div>");
					$("#mask").addClass("mask").css("display", "block");
			
					$("#" + op).css("display", "block");
				}
			
				function displaySpan(op) {
					$("#mask").css("display", "none");
					$("#" + op).css("display", "none");
				}
				//]]>
			</script>
			<script type="text/javascript">
				//<![CDATA[
				$(function() {
					var emailFlag = "false";
					if (emailFlag == 'false') {
						showSpan('alert-activeEmail'); //绑定邮箱
						return;
					}
				})
				//]]>
			</script>
			<div class="personal-main">
				<div class="personal-pay">
					<h3>
						<i>开通第三方账户</i>
					</h3>
					<form id="form" name="form" method="post" action="">
						<div class="pay-notice">
							<p>
								开通第三方资金托管账户的信息将提交至<a href="http://www.htmlsucai.com"
									target="_blank">丰付支付</a>网站执行，
							</p>
							<p>
								<a href="http://www.htmlsucai.com" target="_blank">丰付支付</a>系统将为您分配唯一用户ID（格式为：TG_用户名），并与您团团赚金融账户自动绑定，您无需修改和记忆。
							</p>
						</div>
						<div class="pay-form">
							<h6>请输入您的身份证信息</h6>
							<ul>
								<li><label for="realname">真实姓名</label> <input type="text"
									name="" class="pay-txt" maxlength="16" placeholder="您的真实姓名">
									<div id="realnameErrorDiv"></div></li>
								<li><label for="idCard">身份证号</label> <input type="text"
									name="" class="pay-txt" maxlength="18" placeholder="您的身份证号">
									<div id="idCardErrorDiv">
										<p style="margin-top:10px;">身份证信息认证后将不可修改，请您仔细填写</p>
									</div></li>
							</ul>
							<h6>手机号已绑定</h6>
							<ul>
								<li><label for="phone">手机号</label> <input type="hidden"
									name="form:j_idt98" value="15055100139"> <label>
										150****0139</label></li>
								<li><input type="submit" name="" value="开户"
									style="border:none;" class="btn-paykh"></li>
							</ul>
						</div>
					</form>
					<script type="text/javascript">
						//<![CDATA[
						//验证邮箱是否为空
						function checkactiveEmailFormEmail() {
							var email = $("#activeEmail\\:activeEmailemail").val();
							var nullFlag = (email == "");
							if (nullFlag) {
								$("#activeEmail\\:activeEmailemail_message").remove();
								var $span = $("<span id=activeEmail\:activeEmailemail_message class=error>请输入邮箱</span>");
								$("#activeEmailemailErrorDiv").append($span);
								return false;
							} else {
								var error = $("#activeEmailemailErrorDiv").text();
								if (error == '请输入邮箱')
									$("#activeEmail\\:activeEmailemail_message").remove();
							}
							return true;
						}
						//验证所有
						function checkActiveEmailAll() {
							checkactiveEmailFormEmail();
							var emailErrorFlag = $("#activeEmailemailErrorDiv").text() == "";
							return emailErrorFlag;
						}
						//]]>
					</script>
					<div class="pay-tipcon">
						1、为切实保障投资人的利益，团团赚金融将理财资金托管在<a href="http://www.htmlsucai.com"
							target="_blank">丰付第三方支付</a>平台。平台是2012年6月获批中国人民银行支付许可证和中国证监会基金支付许可的第三方支付公司，在金融支付领域业界领先地位。详情请登录<a
							href="http://www.htmlsucai.com" target="_blank">丰付支付</a>官方网站查看。<br>
						2、根据相关法律规定，团团赚金融在开通资金托管账户时，需要验证您的身份信息。该信息一经设置，无法修改，请慎重选择。为了确保您可以顺利提现，请确认您拥有一张使用该身份证开户的有效储蓄卡。<br>
						3、团团赚金融将最大限度的尊重和保护您的个人隐私，详情请阅读<a
							href="/node/Candyprivacypolicy/RegistrationAgreement0001test"
							target="_blank">《团团赚金融隐私条款》</a>。<br>
						4、您在开通第三方账号过程中，如有遇到问题，可以查看理财帮助，也可以联系我们的客服进行咨询，咨询电话：400-999-8850。
					</div>
				</div>
				<div class="alert-450" id="alert-activeEmail"
					style="display: block;">
					<div class="alert-title">
						<h3>激活邮箱</h3>
					</div>
					<div class="alert-main">
						<form id="activeEmail" name="activeEmail" method="post"
							action="/user/depositAuthenticationAccount"
							enctype="application/x-www-form-urlencoded" target="_blank">
							<input type="hidden" name="activeEmail" value="activeEmail">
							<ul>
								<li><label class="txt-name">邮箱</label> <input
									id="activeEmail:activeEmailemail" type="text"
									name="activeEmail:activeEmailemail" class="txt235"
									onblur="jsf.util.chain(this,event,'return checkactiveEmailFormEmail()','mojarra.ab(this,event,\'blur\',0,0)')"
									placeholder="请输入邮箱">
									<div id="activeEmailemailErrorDiv" class="alert-error120"></div>
								</li>
								<input type="submit" name="activeEmail:j_idt108" value="立即激活邮箱"
									class="btn-ok txt-right" onclick="return checkActiveEmailAll()">
							</ul>
							<input type="hidden" name="javax.faces.ViewState"
								id="javax.faces.ViewState"
								value="3539659789631542353:-7321825572772818867"
								autocomplete="off">
						</form>
					</div>
				</div>
				<script type="text/javascript">
					//<![CDATA[
					if (window.ActiveXObject) {
						var browser = navigator.appName
						var b_version = navigator.appVersion
						var version = b_version.split(";");
						var trim_Version = version[1].replace(/[ ]/g, "");
						if (browser == "Microsoft Internet Explorer" && trim_Version == "MSIE7.0") {
							$("#form\\:sendAuthCodeBtn2").css("display", "block");
							$("#form\\:sendAuthCodeBtn").css("display", "none");
						}
					}
					function sCode2() {
						var mobile = $("#form\\:mobileNumber").val();
						var mobileRegex = "^1[3|4|5|7|8][0-9]{9}$";
						var mobilePattern = new RegExp(mobileRegex);
						var mobileFlag = mobilePattern.test(mobile);
				
						if (!mobileFlag) {
							return;
						}
				
						$("#sendCode").hide();
						$("#sendCodeGrey").show();
						if (flag && $("#sendCode").is(":hidden")) {
							return;
						}
						flag = true;
						timer("sendAuthCodeBtn1", {
							"count" : 60,
							"animate" : true,
							initTextBefore : "后可重新操作",
							initTextAfter : "秒",
							callback : function() {
								$("#sendCode").show();
								$("#sendCodeGrey").hide();
								flag = false;
							}
						}).begin();
					}
					var ua = navigator.userAgent;
					if (ua.indexOf("Windows NT 5") != -1) {
						if (window.ActiveXObject) {
							var browser = navigator.appName
							var b_version = navigator.appVersion
							var version = b_version.split(";");
							var trim_Version = version[1].replace(/[ ]/g, "");
							if (browser == "Microsoft Internet Explorer" && (trim_Version == "MSIE8.0" || trim_Version == "MSIE7.0")) {
								$("#form\\:sendAuthCodeBtn2").css("display", "block");
								$("#form\\:sendAuthCodeBtn").css("display", "none");
							}
						}
					}
				
					var second = 0;
					var internal;
					/** 校验修改手机验证码 */
					function validateSMS() {
						$("#form\\:authCode_message").remove();
						var mobileNumber = $("#form\\:mobileNumber").val();
						if (mobileNumber == '请输入手机') {
							return;
						}
						var returnResult = false;
						$.ajax({
							url : "/valiSms",
							async : false,
							data : {
								mobileNumber : mobileNumber
							},
							success : function(data) {
								if (data.flag == 'NO') {
									$("#form\\:authCode_message").remove();
									var $span = $("<span id=form\:authCode_message class=alerterror>点击过于频繁,请<b>" + data.second + "</b>秒后重试</span>");
									$("#authCodeErrorDiv").append($span);
									second = data.second;
									clearInterval(internal);
									internal = setInterval(function() {
										if (second == 0) {
											$("#form\\:authCode_message").remove();
										} else {
											second = second - 1;
											$("#form\\:authCode_message").find('b').html(second);
										}
									}, 1000);
									returnResult = false;
								} else if (data.flag == 'NO1') {
									$("#form\\:authCode_message").remove();
									var $span = $("<span id=form\:authCode_message class=alerterror>" + data.smsVali + "</span>");
									$("#authCodeErrorDiv").append($span);
									returnResult = false;
								} else {
									returnResult = true;
								}
							}
						});
						return returnResult;
					}
					//]]>
				</script>
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
</body>
</html>


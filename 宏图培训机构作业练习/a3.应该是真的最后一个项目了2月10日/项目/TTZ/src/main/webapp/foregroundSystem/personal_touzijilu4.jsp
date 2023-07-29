<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<script type="text/javascript"
	src="foregroundSystem/My97DatePicker/WdatePicker.js"></script>
<link rel="icon" href="<%=path%>/foregroundSystem/images/s27188837.jpg"
	mce_href="<%=path%>/foregroundSystem/images/s27188837.jpg"
	type="image/x-icon">

<style type="text/css">
.btn-style-01 {
	border-style: none;
	padding: 8px 30px;
	line-height: 24px;
	color: #fff;
	font: 3px "Microsoft YaHei", Verdana, Geneva, sans-serif;
	cursor: pointer;
	border: 1px #ae7d0a solid;
	-webkit-box-shadow: inset 0px 0px 1px #fff;
	-moz-box-shadow: inset 0px 0px 1px #fff;
	box-shadow: inset 0px 0px 1px #fff; /*内发光效果*/
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px; /*边框圆角*/
	text-shadow: 1px 1px 0px #b67f01; /*字体阴影效果*/
	background-color: #feb100;
	background-image: -webkit-gradient(linear, 0 0%, 0 100%, from(#feb100),
		to(#e8a201));
	background-image: -webkit-linear-gradient(top, #feb100 0%, #e8a201 100%);
	background-image: -moz-linear-gradient(top, #feb100 0%, #e8a201 100%);
	background-image: -ms-linear-gradient(top, #feb100 0%, #e8a201 100%);
	background-image: -o-linear-gradient(top, #feb100 0%, #e8a201 100%);
	background-image: linear-gradient(top, #feb100 0%, #e8a201 100%);
	/*颜色渐变效果*/
}

.btn-style-01:hover {
	background-color: #e8a201;
	background-image: -webkit-gradient(linear, 0 0%, 0 100%, from(#e8a201),
		to(#feb100));
	background-image: -webkit-linear-gradient(top, #e8a201 0%, #feb100 100%);
	background-image: -moz-linear-gradient(top, #e8a201 0%, #feb100 100%);
	background-image: -ms-linear-gradient(top, #e8a201 0%, #feb100 100%);
	background-image: -o-linear-gradient(top, #e8a201 0%, #feb100 100%);
	background-image: linear-gradient(top, #e8a201 0%, #feb100 100%);
}
</style>
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
							<img src="foregroundSystem/images/code.png">
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
					src="foregroundSystem/images/logo.png" title="">
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
				<img src="foregroundSystem/images/clist1.jpg" width="1200"
					height="96">
			</div>
			<div id="personal-left" class="personal-left">
				<ul>
					<li><span><a href="<%=path%>/SelHuiKuan.action"><i
								class="dot dot1"></i>账户总览</a></span></li>
					<li><span><a
							style="font-size:14px;text-align:center;width:115px;padding-right:35px;"
							href="<%=path%>/mr_list.action">资金记录</a></span></li>
					<li class="pleft-cur"><span><a
							style="font-size:14px;text-align:center;width:115px;padding-right:35px;"
							href="<%=path%>/TenderRecordList.action">投资记录</a></span></li>
					<li><span><a
							style="font-size:14px;text-align:center;width:115px;padding-right:35px;"
							href="<%=path%>/Borrow/selBorrowMoney.action">借款记录</a></span></li>
					<li class=""><span><a
							href="${pageContext.request.contextPath}/bank/selbank.action"><i
								class="dot dot02"></i>银行卡管理</a> </span></li>
					<li><span><a href="<%=path %>/selBank.action"><i
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
						<i>投资记录</i>
					</h3>
					<div class="investnote-money">
						<span><b class="fb">总投资</b><br> <i>${SumMoney }</i> 元
						
					</div>
					<span id="form:dataTable">
						<div class="investnote-list">
							<div class="investnote-contitle">
								<span class="investnote-w1 fb" style="width: 150px;">交易时间</span>
								<span class="investnote-w2 fb" style="width: 150px;">投标类型</span>
								<span class="investnote-w3 fb" style="width: 120px;">状态</span> <span
									class="investnote-hbw4 fb" style="width: 70px;">投标金额</span> <span
									class="investnote-hbw6 fb"
									style="width: 90px;margin-left: 80px;">操作</span>
							</div>
							<ul>
								<c:forEach items="${ls }" var="list">
									<li><span class="investnote-w1" style="width: 150px;"><fmt:formatDate
												value="${list.tender_time }" pattern="yyyy-MM-dd" /> </span><span
										class="investnote-w2" style="width: 150px;">${list.tender_type }</span><span
										class="investnote-w3" style="width: 120px;"> <c:if
												test="${list.tender_statu==0 }">
												<a
													href="<%=path %>/Borrow/getBorrowMoney.action?id=${list.t_id}">
													<font color="blue"> 投资中 </font>
												</a>
											</c:if> <c:if test="${list.tender_statu==5 }">

												<font color="blue"> 债权转让中 </font>
											</c:if> <c:if test="${list.tender_statu==6 }">
												<font color="blue"> 债权转让完成 </font>
											</c:if>
									</span><span class="investnote-hbw4" style="width: 70px;">${list.tender_money }</span>
										<span class="investnote-hbw4"
										style="width: 50px;margin-left: 53px;"> <c:if
												test="${list.tender_statu==0 }">
												<a href="javascript:void(0);"
													onclick="showSpan('alert-checkOldMobile');$('#tender_id').val('${list.tender_id}');"><font
													color="red">转让</font></a>
											</c:if>
									</span></li>
								</c:forEach>
							</ul>
						</div> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第${currPage }页,共
						${totalRow }条&nbsp;&nbsp; <a
						href="<%=path%>/TenderRecordCompletedStatuON0.action?currPage=1 ">首页</a>&nbsp;&nbsp;
						<a
						href="<%=path %>/TenderRecordCompletedStatuON0.action?currPage=${currPage-1 }">上一页</a>&nbsp;&nbsp;
						<a
						href="<%=path %>/TenderRecordCompletedStatuON0.action?currPage=${currPage+1 }">下一页</a>&nbsp;&nbsp;
						<a
						href="<%=path %>/TenderRecordCompletedStatuON0.action?currPage=${totalPage }">末页</a>
					</span>
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
	<!-- 验证密码弹框 -->
	<div class="alert-450" id="alert-checkOldMobile" style="display:none;">
		<div class="alert-title">
			<h3>验证密码</h3>
			<span class="alert-close"
				onclick="displaySpan('alert-checkOldMobile')"></span>
		</div>
		<div class="alert-main">
			<form id="checkOldMobileForm" name="checkOldMobileForm" method="post"
				action="" enctype="application/x-www-form-urlencoded">
				<ul>
					<input type="hidden" id="tender_id" />
					<li style="margin-top: 15px"><label class="txt-name">请输入支付密码:</label>
						<input type="text" id="mima" class="txt220" maxlength="30"
						style="width:250px" placeholder="请输入支付密码"
						onkeyup="yzmima(this.value);"> <br /> <br /></li>
					<li><span class="txt-right" style="display: none;" id="errors"><i
							class="error-icon"></i><i class="error-tip" id="errorsmsg"></i></span><br>
						<input type="button" value="确 认" class="btn-ok txt-right"
						onclick="tijiao();"></li>
				</ul>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		//<![CDATA[
		//投资金额不能空
		function showSpan(op) {
			//显示弹出框
			$("body").append("<div id='mask'></div>");
			$("#mask").addClass("mask").css("display", "block");
			$("#" + op).css("display", "block");
		}
		function tijiao() {
			var val = $("#tender_id").val();
			if ($("#mima").val() != '${user.zpwd}') {
				$("#errors").css("display", "");
				$("#errorsmsg").html("密码错误!");
			} else if ($("#mima").val() == '') {
				$("#errors").css("display", "");
				$("#errorsmsg").html("请输入密码");
			} else {
				location.href = "<%=path%>/Borrow/ZaiQuanZuanRang.action?tender_id=" + val;
			}
		}
		function displaySpan(op) {
			$("#mask").css("display", "none");
			$("#" + op).css("display", "none");
		}
		//验证密码
		function yzmima(val) {
			if (val != '${user.zpwd}') {
				$("#errors").css("display", "");
				$("#errorsmsg").html("密码错误!");
			} else {
				$("#errors").css("display", "");
				$("#errorsmsg").html("密码输入正确!");
			}
		}
	</script>
</body>
</html>

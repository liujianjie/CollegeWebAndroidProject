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
<link href="css/common.css" rel="stylesheet" />
<link href="css/about.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="script/jquery.min.js"></script>
<script type="text/javascript" src="script/common.js"></script>
<link rel="icon" href="<%=path%>/foregroundSystem/images/s27188837.jpg"
	mce_href="<%=path%>/foregroundSystem/images/s27188837.jpg"
	type="image/x-icon">
</head>
<body>
	<jsp:include page="/foregroundSystem/header.jsp"></jsp:include>
	<!--关于我们-->
	<!--关于我们-->
	<div class="bg">
		<div class="contain" id="tabs" style="margin:0 auto;">
			<div class="text-nav">
				<ul class="clearfix">
					<li><a class="text-link"
						href="${pageContext.request.contextPath}/notice/selnoticelist.action?cpage=1">网站公告</a></li>
					<li><a class="text-link"
						href="<%=path%>/foregroundSystem/jianjie.jsp">公司简介</a></li>
					<li class="selected"><a class="text-link"
						href="<%=path%>/foregroundSystem/tuandui.jsp">管理团队</a></li>
					<li><a class="text-link"
						href="<%=path%>/foregroundSystem/huoban.jsp">合作伙伴</a></li>
					<li><a class="text-link"
						href="<%=path%>/foregroundSystem/fengcai.jsp">团队风采</a></li>
					<li><a class="text-link"
						href="<%=path%>/foregroundSystem/zhengce.jsp">法律政策</a></li>
					<li><a class="text-link"
						href="<%=path%>/foregroundSystem/shemgming.jsp">法律声明</a></li>
					<li><a class="text-link"
						href="<%=path%>/foregroundSystem/shuoming.jsp">资费说明</a></li>
					<li><a class="text-link"
						href="<%=path%>/foregroundSystem/zhaoxiannashi.jsp">招贤纳士</a></li>
					<li><a class="text-link"
						href="<%=path%>/foregroundSystem/lianxi.jsp">联系我们</a></li>
				</ul>
			</div>
			<div class="text-box">
				<div class="text-content" id="text-content">
					<h1 class="title">管理团队</h1>
					<p class="mt20 cn_line">
						团团赚以金融创新基因吸引了来自国内五百强知名企业的业界精英，目前团队成员年轻朝气、充满活力，热爱新事物，勇于接受新挑战，团队成员有信心和决心，要用人人共享的理念在金融改革的浪潮中乘风破浪，要为普通大众创造财富增值的机会，为诚信经营者提供高效便捷的金融服务。
					</p>
					<div style="padding:20px 0;border-bottom:1px dashed #dbdbdb"
						class="clearfix">
						<div class="img fl" style="width:130px;">
							<img src="images/lxw.jpg" alt="">
						</div>
						<div class="fl" style="width:790px;margin-left:20px;">
							<p>
								<span style="font-size:18px;color:#0aaae1;">王二虎</span> <span
									style="color:#0aaae1;"> 联合创始人</span>
							</p>
							<p style="font-size:16px;line-height:32px;color:#595757">
								曾先后在中国农业银行、招商银行、兴业银行担任高管职务，拥有16年的国内大型银行工作经历，对客户信用风险评估、产品定价机制和市场风险管理策略具有深入的研究，风险管理经验十分丰富。
							</p>
							<p style="font-size:16px;line-height:32px;color:#595757">
								2015年与合伙人共同创建互联网金融服务平台——团团赚</p>
							<p style="font-size:16px;line-height:32px;color:#595757">
								感言：风控的宗旨在于对风险的预知和防范</p>
						</div>
					</div>


					<h1 class="title">组织机构</h1>
					<br>
					<p>
						<img src="images/org.png" alt="团团赚-组织机构" title="团团赚-组织机构">
					</p>
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


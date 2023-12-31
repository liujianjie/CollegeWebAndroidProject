<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
					<li><a class="text-link"
						href="<%=path%>/foregroundSystem/tuandui.jsp">管理团队</a></li>
					<li><a class="text-link"
						href="<%=path%>/foregroundSystem/huoban.jsp">合作伙伴</a></li>
					<li><a class="text-link"
						href="<%=path%>/foregroundSystem/fengcai.jsp">团队风采</a></li>
					<li class="selected"><a class="text-link"
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
					<h1 class="title">法律政策</h1>
					<p class="mt10 cn_line">
						<span
							style="font-family:Microsoft YaHei;color:#0aaae1;font-size:16px;">1、
							什么是民间借贷？</span><br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						民间借贷是指自然人之间、自然人与法人之间、自然人与其它组织之间借贷。民间借贷属于《民法通则》规定的一种民事法律行为，在行为人具有完全民事行为能力（即年满18周岁，且不存在足以影响自身行为的精神疾病的情形）、意思表示真实，借款合同符合法律、行政法规规定时，该借款合同完全受到《合同法》等法律的保护。民间借贷是民间资本的一种投资渠道，作为银行金融的有效补充已逐渐成为民间金融的一种重要形式。
					</p>
					<p>
						<br>
					</p>
					<p class="mt10 cn_line">
						<span
							style="font-family:Microsoft YaHei;color:#0aaae1;font-size:16px;">2、民间借贷是否合法？</span><br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;《中华人民共和国合同法》从法律上肯定了民间借贷行为的合法性，并从法律层面保护出借人收回借贷资金和利息的权利。此外，根据《最高人民法院关于人民法院审理借贷案件的若干意见》的规定，自然人之间、自然人与法人、自然人与其他组织之间的借款作为借贷案件受理，进一步确保了民间借贷的组织形式及其合法性。<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;《国务院关于鼓励和引导民间投资健康发展的若干意见》：新36条的出台，鼓励民间资本进入金融领域，发起设立金融中介服务机构。
					</p>
					<p>
						<br>
					</p>
					<p class="mt10 cn_line">
						<span
							style="font-family:Microsoft YaHei;color:#0aaae1;font-size:16px;">3、民间借贷的合同何时生效？</span><br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;《中华人民共和国合同法》第二百一十条规定“自然人之间的借款合同，自贷款人提供借款时生效”。合同生效即可按照约定计息。
					</p>
					<p>
						<br>
					</p>
					<p class="mt10 cn_line">
						<span
							style="font-family:Microsoft YaHei;color:#0aaae1;font-size:16px;">4、民间借贷的利率怎么规定？</span><br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;《中华人民共和国合同法》第二百一十一条规定：“自然人之间的借款合同约定支付利息的，借款的利率不得违反国家有关限制借款利率的规定”。<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;最高人民法院《关于人民法院审理借贷案件的若干意见》第6条：“民间借贷的利率可以适当高于银行的利率，各地人民法院可以根据本地区的实际情况具体掌握，但最高不得超过银行同类贷款利率的四倍，（包含利率本数）。超出此限度的，超出部分的利息不予保护”。
					</p>
					<p>
						<br>
					</p>
					<p class="mt10 cn_line">
						<span
							style="font-family:Microsoft YaHei;color:#0aaae1;font-size:16px;">5、什么是债权转让？</span><br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						债权转让又称“债权让与”，是指在不改变合同内容的合同转让，债权人通过债权转让第三人订立合同将债权的全部或部分转移于第三人。债权全部让与第三人，第三人取代原债权人成为原合同关系的新的债权人，原合同债权人因合同转让而丧失合同债权人权利，债权部分让与第三人，第三人成为合同债权人加入到原合同关系之中，成为新的债权人，合同中的债权关系由一人变数人或由数人变更多人。新加入合同的债权人与原债权人共同分享债权，并共享连带债权。
					</p>
					<p>
						<br>
					</p>
					<p class="mt10 cn_line">
						<span
							style="font-family:Microsoft YaHei;color:#0aaae1;font-size:16px;">6、债权转让是否合法？</span><br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;《中华人民共和国合同法》第七十九条规定：“债权人可以将合同的权利全部或部分转让给第三人”，表明债权人转让债权是法定的权利。
					</p>
					<p>
						<br>
					</p>
					<p class="mt10 cn_line">
						<span
							style="font-family:Microsoft YaHei;color:#0aaae1;font-size:16px;">7、债权转让何时生效？</span><br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;《中华人民共和国合同法》第八十条规定：“债权人转让权利的，应当通知债务人。未经通知，该转让对债务人不发生效力”。该规定明确了我国在债权让与对债务人生效的问题上采用的是通知原则，即债权人转让权利的，只需通知债务人，即对债务人发生效力。<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;债权转让一旦在债权人与受让人之间达成合意即有效成立，自此，受让人取代了原债权人的地位而成为债权人。债务人自得到债权转让的通知起，向新确认的债权人（即受让人）履行偿债义务。
					</p>
					<p>
						<br>
					</p>
					<p class="mt10 cn_line">
						<span
							style="font-family:Microsoft YaHei;color:#0aaae1;font-size:16px;">8、什么是电子合同？</span><br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电子合同，又称电子商务合同，我国《中华人民共和国合同法》定义：“电子合同是双方或多方当事人之间通过电子信息网络以电子的形式达成的设立、变更、终止财产性民事权利义务关系的协议。”通过上述定义可以看出电子合同是以电子的方式订立的合同，其主要是指在网络条件下当事人为了实现一定的目的，通过数据电文、电子邮件等形式签订的明确双方权利义务关系的一种电子协议，当事人之间签订的这种合同是合同的电子化，是合同的新形式。
					</p>
					<p>
						<br>
					</p>
					<p class="mt10 cn_line">
						<span
							style="font-family:Microsoft YaHei;color:#0aaae1;font-size:16px;">9、电子合同实现形式是什么？</span><br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						我国《中华人民共和国合同法》第13条规定：“当事人订立合同，采取要约、承诺方式。”
						电子合同的订立同样有这两个过程，且均以电子的形式完成，输入相关的信息符合预先设定的程序，计算机就可以自动做出相应的意思表示。（注：意思表示的电子化，是指在合同订立的过程中通过相关的电子方式表达自己意愿的一种行为，这种行为的表现方式是通过电子化形式实现的。《电子商务示范法》中将电子化的意思表示称之为“数据电文”）。
					</p>
					<p>
						<br>
					</p>
					<p class="mt10 cn_line">
						<span
							style="font-family:Microsoft YaHei;color:#0aaae1;font-size:16px;">10、电子合同有法律效力吗？</span><br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						我国《中华人民共和国合同法》第18条规定：“要约到达受要约人时生效。”由于电子合同以电子方式进行，要约的内容均表现为数字信息在网络上传播，要约在自己计算机上按下确认键的同时对方计算机几乎同步收到要约的内容。《中华人民共和国合同法》第16条第2款规定：“采用数据电文形式订立合同，收件人指定特定系统接收数据电文的，该数据电文进入该特定系统的时间，视为到达时间，未指定特定系统的，该数据电文进入收件人的任何系统的首次时间，视为到达时间”。
					</p>
					<p>
						<br>
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

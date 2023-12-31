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
					<li><a class="text-link"
						href="<%=path%>/foregroundSystem/zhengce.jsp">法律政策</a></li>
					<li class="selected"><a class="text-link"
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
					<h1 class="title">法律声明</h1>
					<p class="cn_line mt5">
						本声明包含访问和使用团团赚（<a href="http://www.htmlsucai.com">www.yirenbao.com</a>）的有关注意事项，在您访问和使用本网站之前，请务必仔细阅读本声明。
						您若要访问和使用本网站（<a href="http://www.htmlsucai.com">www.yirenbao.com</a>），请务必仔细阅读本声明中所包含的条款和本网站即时刊登的通告，并且遵守有关互联网及/或本网站的相关法律、规定与规则。若您不同意本声明内容，建议立即离开本网站。一旦您访问、使用了本网站，即视为您同意并接受了所有该等条款及通告。
					</p>
					<p class="cn_line">
						<br>
					</p>
					<p class="cn_line">
						<span style="font-size:18px;">&nbsp;一、免责声明</span>
					</p>
					<p class="cn_line">1.1
						本网站在此声明，对您使用本网站、与本网站相关的任何内容、服务或其它链接至本网站的站点、内容均不作直接、间接、法定、约定的保证。任何人通过使用本网站上的信息或由本网站链接的信息，或其他与本网站链接的网站信息所导致的损失或损害（如收入或利润之损失，电脑系统之损坏或数据丢失等后果），责任均由使用者自行承担，本网站概不负责。
					</p>
					<p class="cn_line">1.2 本网站所载的任何信息和材料，包括但不限于有关评论、投资分析报告、
						预测文章、理论研究、图表、指标、图像、视频、链接或其它形式的信息，均只作为参考，不应用作决策依据，您须对您自主决定的行为负责。本网站不对因依赖本网站所载信息或材料的全部或部分内容而引致的任何损失或损害承担任何责任。
					</p>
					<p class="cn_line">1.3
						互联网传输可能会受到干扰，出现中断、延迟或数据错误等现象，对于非本网站能控制的情况（包括但不限于通讯设施故障）可能引致的数据及交易的不准确、不及时或者乱码、错误等，本网站不承担任何责任。
					</p>
					<p class="cn_line">1.4
						如第三方通知本网站存在侵权信息、材料，本网站将在核实有关情况后，及时对该等信息、材料采取删除、屏蔽、断开链接等必要措施。本网站尽到上述义务后，不再承担任何责任。
					</p>
					<p class="cn_line">1.5
						本网站为用户提供专业的投融资服务，需要对用户资质进行审核评估，并非所有的用户都可以获得所有产品和服务，本网站对您能否获得相关产品或者服务以及获得何种产品、服务不作任何担保。
					</p>
					<p class="cn_line">1.6
						本网站某些部分或网页可能包括单独条款和条件，作为对本声明的补充，如果有任何冲突，该等附加条款和条件将对相关部分或网页适用。</p>
					<p class="cn_line">
						1.7 本网站系服务平台，平台竭力为客户提供年化收益率在百分之十五以上的理财产品等，但并不保证固定的投资收益水平亦不保证获利。<br>
						1.8 但投资的本性就是与风险共存的，即使公司竭尽最大的努力降低投资风险，也不可能完全消除风险。投资者应根据自己的情况做出选择。
					</p>
					<p class="cn_line">
						<br>
					</p>
					<p class="cn_line">2.1
						本网站所有内容和服务，包括但不限于网站的整体结构、网页设计、文字、图片、图表、软件、视频文件、音频文件、广告以及本网站为用户提供的其它信息或资料，其知识产权属本网站或其他相关方所有。未经本网站或其他相关方许可，任何人不得为了商业目的而复制或者以其它方式进行非法使用。
					</p>
					<p class="cn_line">2.2
						对于本网站上知识产权属于本网站、提供给用户下载的软件或文档，任何他人或他方仅可以以本网站允许的方式下载或使用，不得超出许可范围进行复制和其它商业用途的使用。
					</p>
					<p class="cn_line">2.3
						对于非本网站所有但本网站提供下载地址的软件或文档，本网站仅为方便您的使用而提供相关链接，使用者对该软件或文档的使用应遵守该软件或文档相关权利人规定的使用条款。
					</p>
					<p class="cn_line">2.4
						本网站引用、摘录或转载来自第三方的内容时，均严格按照我国知识产权相关法律、法规和司法解释确立的原则进行。任何人浏览本网站时如发现有关内容存在侵权事宜，请与本网站联系，如果属侵权信息，本网站将在职责范围内予以清除。
					</p>
					<p class="cn_line">2.5
						本网站相关业务及产品说明内容仅供参考，在法律允许的范围内，本网站保留相关内容的解释权。</p>
					<p class="cn_line">
						<br>
					</p>
					<p class="cn_line">
						<span style="font-size:18px;">三、链接政策</span>
					</p>
					<p class="cn_line">3.1
						某些情况下，本网站上可能提供跳转至国际互联网上的其它网站的链接。本网站将该等链接列入本网站内，仅为协助您浏览和参考之用，请您对相关内容自行辨别及判断，本网站不承担任何责任。本网站致力于挑选享有良好声誉的网站和资料来源，但是，除非本网站已经明确声明与该第三方有合作关系，否则，提供链接至此等第三方网站，并不视为本网站同意、推荐、认可、保证或推介任何第三方或在第三方网站上所提供的任何信息、产品或服务。
					</p>
					<p class="cn_line">3.2
						对于任何外部链接的网站、或该等网站上的内容的准确性、充分性、可靠性、及时性或完整性，本网站不承担任何责任。同时，对您在该等网站上下载软件或文档时可能遇到的困难或由此引起的损失或损害，本网站不承担任何责任。
					</p>
					<p class="cn_line">3.3
						为方便您的使用，本网站亦可能提供跳转至非本网站所在地司法管辖区域的网站的链接。该等网站所提供的信息、产品和服务可能仅限于向身处或居所属于当地司法管辖区域的人士提供。您应先仔细查阅该等网站的使用条款，然后才使用相关的网站。
					</p>
					<p class="cn_line">3.4
						凡从第三方网站设置跳转至本网站的链接，本网站不负责该链接的建立与设置。除非本网站已经明确声明与该第三方有合作关系，否则，任何设置该等链接的行为，并不视为设置该等链接的第三方与本网站之间有合作关系或已经得到本网站的认可。对于您由于使用该等链接可能招致的任何损失或损害，本网站不承担任何责任。
					</p>
					<p class="cn_line">
						<br>
					</p>
					<p class="cn_line">
						<span style="font-size:18px;">四、隐私保护声明</span>
					</p>
					<p class="cn_line">4.1
						本网站可能会根据某种业务的需要收集您的相关信息资料，并把收集到的相关信息资料用于分析了解您的服务需求以及开展各项业务，为您提供更优质的产品和服务。
					</p>
					<p class="cn_line">4.2
						本网站将会依照国家有关法律法规，采取各种严格的措施确保您的信息安全，以防止未经合法授权的任何人、任何机构，包括本网站的员工和分支机构获取您的信息。
					</p>
					<p class="cn_line">4.3
						本网站可能会通过与第三方进行合作来为您提供相关服务，在此情况下，如该第三方同意承担与本网站同等的保护用户隐私的责任，则视为您同意本网站可以将您的个人信息和资料提供给该第三方。
					</p>
					<p class="cn_line">4.4
						司法机关、政府部门或其他监管机构根据有关法律、法规、规章及其他政府规范性文件的规定和程序，要求本网站提供您的信息资料的，本网站有可能提供您的相关信息资料。
					</p>
					<p class="cn_line">4.5
						您在本网站注册，即视为您同意本网站向您注册时填写的电子邮箱、手机号码发送与本网站服务有关的电子邮件或短信。</p>
					<p class="cn_line">
						<br>
					</p>
					<p class="cn_line">
						<span style="font-size:18px;">五、修订与解释</span>
					</p>

					<p class="cn_line">5.1 本网站保留对本声明进行修订和解释的权利。</p>
					<p class="cn_line">5.2
						对本声明的修订将不会进行预先的通知或公告，修订结果只在团团赚平台网站上进行公布，不另行通知会员个人。</p>
					<p class="cn_line">5.3 如您在本声明作出修订后，仍继续使用本网站，即视为您接受有关修订。</p>
					<p class="cn_line">5.4 您登录本网站并浏览任何网页，即表示您完全同意并遵守上述条款。</p>
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

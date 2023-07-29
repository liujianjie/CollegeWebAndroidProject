<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link href="<%=path%>/foregroundSystem/css/help.css" rel="stylesheet" />
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
							<img src="<%=path%>/foregroundSystem/images/code.png">
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
				<li class="on"><a
					href="<%=path%>/Borrow/selBorrowMoneySomeList.action">首页</a></li>
				<li><a
					href="<%=path%>/Borrow/selMoreBorrowMoneySomeList.action?cpage=1"
					class="">我要投资</a></li>
				<li><a href="<%=path%>/foregroundSystem/borrow.jsp" class="">我要借款</a></li>
				<li><a href="<%=path%>/foregroundSystem/help.jsp">安全保障</a></li>
				<li class="top-nav-safe"><a href="<%=path%>/SelHuiKuan.action">我的账户</a></li>
				<li><a href="<%=path%>/foregroundSystem/jianjie.jsp">关于我们</a></li>
			</ul>
		</div>
	</div>
	</header>
	<!--帮助中心-->
	<div class="banner">
		<img src="<%=path%>/foregroundSystem/images/help-banner.png" alt="">
	</div>
	<div class="content help-content">
		<dl>
			<dt>
				<ul class="content-tab">
					<li class="sel">安全保障</li>
					<li class="">我要投资</li>
					<li class="">我要借款</li>
					<li class="">我的账户</li>
					<li class="">名词解释</li>
				</ul>
			</dt>
			<dd class="question-list-wrap" style="display: block;">
				<ul>
					<li class="question">
						<dl>
							<dt>本金保障计划</dt>
							<dd>
								团团赚为所有投资人建立"本金保障计划"用于保障全体投资人的资金安全，投资人在团团赚的投资行为100%适用于本金保障计划。<br />
								1、什么是本金保障计划<br />
								团团赚针对每笔借款根据服务类型及借款人的信用等级计提一定比例的风险备用金。团团赚已与中国光大银行上海分行签署风险备用金托管协议，计提的风险备用<br />
								金存放入中国光大银行上海分行进行专户托管。风险备用金的计提标准和垫付规则详见分类垫付规则明细表。<br />
								2、本金保障计划是如何运作的<br />
								"风险备用金账户"资金将专门用于在一定限额内偿付团团赚所服务的投资人由于借款人的违约所遭受的本金或本息的损失（具体偿付金额
								以所出借的服务类<br />
								型的垫付规则为准），当借款人逾期时，团团赚将按照"风险备用金账户"资金使用规则从该账户中提取相应资金用于偿付投资人应收取的本金或本息金额（不同服务的垫付范围请参考《分类垫付规则明细表》）。<br />
								3、"风险备用金账户"资金使用规则<br />
								3.1、违约偿付规则：当借款人逾期还款超过30日时，方可从"风险备用金账户"资金中抽取相应资金偿付投资人应收金额。<br />
								3.2、时间顺序规则：即"风险备用金账户"资金对投资人应收逾期金额的偿付按照该债权发生的时间顺序进行偿付分配，先偿付发生在前的债权，后偿付发生在后的债权。<br />
								3.3、债权比例规则："风险备用金账户"资金对同一借款关系项下的不同投资人应收逾期金额的偿付按照各自债权金额占发生债权总额的比例进行偿付分配。当"<br />
								风险备用金账户"资金当期余额不足以支付当期（每月为一期）所有应享受该账户的投资人所对应的逾期<br />
								偿付金额时，则当期应享受该账户的投资人按照各自对应的应收逾期金额占当期所有投资人对应的逾期应收总额的比例进行偿付分配。<br />
								3.4、有限偿付规则：即"风险备用金账户"资金对投资人的应收逾期金额的偿付以该账户的资金总额为限。当该账户余额为零时，自动停止对该投资人应收逾期金<br />
								额的偿付，直到该账户获得新的风险备用金。<br />
								3.5、收益转移规则：即当投资人获得"风险备用金帐户"对某笔逾期偿付金额的足额偿付后，该债权对应的借款人所偿还的本金、借款利息及违约罚息归属"风险备用金账户"。<br />
								3.6、金额上限规则：即当"风险备用金账户"内金额超过团团赚平台上所有债权本金金额的10%时，超出部分作为团团赚的风险备用金账户管理费，归团团赚所有。<br />
								3.7、团团赚将审慎管理"风险备用金账户"资金，并就账户及资金使用情况进行定期披露。 4、分类垫付规则明细表
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>法律合规保障</dt>
							<dd>
								一、关于在团团赚平台上网络借贷关系的合法性：<br />
								1.《中华人民共和国合同法》第196条规定“借款合同是借款人向贷款人借款，到期返还借款并支付利息的合同”，允许普通民事主体之间发生借贷关系，并认定借款人还本付息的合理性。<br />
								2.团团赚平台上的网络借贷关系在借款的渠道和方式上进行了创新，出借人与借款人的借贷行为原则上属于民事主体之间的借贷，因此符合《合同法》的相关规定，受到法律保护。<br />
								二、关于电子合同的合法性及可执行性：<br />
								1.《合同法》第10条规定：“当事人订立合同，有书面形式、口头形式和其他形式。”<br />
								2.《合同法》第11条规定：“书面形式是指合同书、信件和数据电文（包括电报、电传、传真、电子数据交换和电子邮件）等可以有形地表现所载内容的形式。”<br />
								3.《中华人民共和国电子签名法》规定：“民事活动中的合同或者其他文件、单证等文书，当事人可以约定使用或者不使用电子签名、数据电文。”“当事人约定使用电子签名、数据电文的文书，不得仅因为其采用电子签名、数据电文的形式而否定其法律效力。”因此，电子合同与纸质合同具有同等的法律效力。<br />
								三、关于出借人在团团赚平台获得的投资收益的合法性：<br />
								1.《合同法》第211条规定：“自然人之间的借款合同约定支付利息的，借款的利率不得违反国家有关限制借款利率的规定”。<br />
								2.根据最高人民法院《关于人民法院审理借贷案件的若干意见》第6条规定：“民间借贷的利率可以适当高于银行的利率，各地人民法院可以根据本地区的实际情况具体掌握，但最高不得超过银行同类贷款利率的四倍，（包含利率本款）。超出此限度的，超出部分的利息不予保护。”当期人民银行一年期基准贷款利率为6.00%，则当期基准贷款利率的四倍为24.00%，团团赚网的出借收益率低于24.00%，在法律允许的范围内，受到法律保护。
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>风控保障</dt>
							<dd>
								五道安全防线：<br /> a) 严格的信贷政策，过滤高风险行业；<br /> b)
								严谨的资料审核，16项必备材料逐一审查，全方位覆盖所有风险点；<br /> c)
								专业银行级别反欺诈系统，结合多角度社会背景实地征信，辨别信息真伪；<br /> d)
								贷中风险预警机制，等额本息的还款方式更好的控制逾期风险；<br /> e)
								完善的贷后管理，多种手段针对各种逾期情况的催收体系。 <br /> 五大风控规则：<br />
								风控中心作为公司控制风险的主要部门，承担了控制网站风险的主要职责。团团赚风控中心建立了相关审批制度及流程，并努力完善坏账准备金提取制度及坏账核销制度。风控中心的任务十分重要，首先要有一套严密的防控措施，以制度和操作流程采取业务定型；同时对已经发生的风险要分析原因，归纳出他们之间的一些共同
								点；对总结出的风险高发群体，今后在审查过程中从严控制。<br /> 1、团团赚金融信息服务有限公司借款管理办法及实施细则<br />
								为
								加强公司借款业务的管理，推动业务健康发展、规范业务操作、防范业务风险，根据《中华人民共和国合同法》、《中华人民共和国担保法》和参照《贷款通则》等
								相关法律法规和本行相关规章制度，制定本办法。其中包括，借款产品介绍，借款的审批审查，借款的调查，借款的补充细则。我公司已严格按照此管理办法和细则
								实施。<br /> 2、客户评级管理办法<br />
								客户信用等级是反映客户偿还债务能力和意愿的相对尺度。主要从客户的市场竞争力，偿债能力，管理水平和发展前景等方面评定。<br />
								客户信用等级评定主标尺，为统一标准和唯一标准。由信用等级、信用等级对应的违约概率区间、信用等级的平均违约概率三部分构成，评级分数通过评级得分到违约概率的校正建立与违约概率的对应关系，并基于主标尺形成与信用等级的映射关系。<br />
								3、小微企业借款风险分类办法<br />
								小微企业借款划分为正常、关注、次级、可疑和损失五类，后三类合称为不良贷款。根据借款逾期时间，同时考虑借款人的风险特征和担保因素，参照小微企业借款逾期天数风险分类矩阵对小微企业借款进行分类。<br />
								4、团团赚金融信息服务有限公司逾期借款催收管理办法及实施细则<br />
								目前催讨为前端电话催收、后端上门催收，催收人员做好催收工作，做好记录以及提供数据分析给信审部门。<br />
								5、损失类借款核销管理办法<br />
								在小微企业借款风险分类的基础上，根据有关规定及时足额计提借款损失准备，核销小微企业借款损失。<br />
								注：团团赚金融信息服务有限公司为团团赚平台的运营方。
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>账户安全保障</dt>
							<dd>
								1、第三方资金托管，用户通过第三方支付平台进行资金交易，有效保障投资人（债权人）资金安全<br />
								2、全程自主开发的专业平台，先进的安全技术体系，保护团团赚用户的个人信息、账户信息以及交易记录；<br />
								3、完善的运维监测体系，在用户的账户发生异常访问或登录时，及时锁定账户及账户资金，并联系用户核实情况，全面保障用户信息及资金安全；<br />
								4、对客户提供的信息全面保护，除客户事先同意，或应政府及上级监管机构的要求而披露之外，不会向任何外部机构披露。
							</dd>
						</dl>
					</li>
				</ul>
			</dd>
			<dd class="question-list-wrap" style="display: none;">
				<ul>
					<li class="question">
						<dl>
							<dt>如何投标？</dt>
							<dd>
								<p>步骤1：登录团团赚账户，进入“债权列表”，选择想要投资的借款标。</p>
								<p>（2）步骤2：进入详情页，提交金额，点击“马上投标”。</p>
								<p>步骤3：投标确认。</p>
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>投标前需要注意哪些事项？</dt>
							<dd>
								1、认真阅读该借款列表的详细信息（包括贷款金额，利息率，贷款期限、贷款者信用等级等），确定您所要投的标符合您的风险承受能力和所要求的回报率；<br />
								2、应知道若您所投标的借款人发生违约，违约损失需要由该标的所有投资人共同承担；<br />
								3、投标前请您核实自己将要投资的金额，确认无误后再进行操作。
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>在应收日期的次日凌晨收到回款，为何不显示贴息？</dt>
							<dd>
								由于借款人还款当日由系统分多时段扣除款项，当日最后扣款时间为23:59:59，故在此时段结算的还款在投资人账户中将显示次日凌晨回款。此情况不属借款人逾期还款，故不会计算贴息！
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>借款人提前还款怎么办？</dt>
							<dd>
								除借款期限为三个月的借款产品外，其他借款期限的借款产品，合同约定的限制提前还款期限满后，借款人有权选择提前还款；投资人可将提前收回的本金再次出借给其他借款人，并不影响投资人的收益。
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>能提前收回借出去的钱吗？</dt>
							<dd>
								不可以。一旦您成功出借，不可提前收回已借出资金，除非借入者自愿提前还款。<br />
								在回款期内，如果你有资金周全需求，可通过如下方法进行资金融通：<br />
								（1）发布净值标。即以你已投资的一定待收本金作为授信而发布的借款标，从其他投资人处获得借款。<br />
								（2）进行债权转让。如果你投资的借款标已过90天锁定期，可转让给其他投资者，提前收回资金。
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>如何收取还款？</dt>
							<dd>借款人在规定的还款时间内将钱充值到与团团赚合作的第三方支付平台上，团团赚系统会按出借比例将款项转入投资人的团团赚账户余额中。投资人可根据个人需求选择提现或继续出借。借款人也可能提前偿还全部贷款或者在到期日前手动提前偿还贷款，请投资人注意查收团团赚发出的通知。
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>借款人逾期还款，团团赚将如何催收？</dt>
							<dd>团团赚平台有一套完善的催收机制，通过短信提醒、电话回访、上门拜访、法律诉讼等多种方式，有效的保证了平台上绝大部分借款人的及时还款。延迟还款的借款人需按约定交纳罚息。
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>借款人未按时还款怎么办？</dt>
							<dd>
								若借款人逾期未归还款项，团团赚将实行100%本金保障计划（注：网络信用标只保本金）。同时，为保护投资人的权益，将会采取以下措施：<br />
								1、团团赚催收部门对借款人开展大力度催收；<br /> 2、根据电子协议中关于罚息的规定，对借款人收取逾期罚息；<br />
								3、对于符合本金保障条件的投资人进行补偿；<br /> 4、团团赚根据隐私规则的约定分阶段将借款人的信息进行黑名单曝光。
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>什么是网络信用标？</dt>
							<dd>
								网络信用标显示“网”字标记。<br />
								是指有资金需求的借款人向团团赚平台提交信用认证借款申请，由平台根据借款人提供的多项材料进行银行级别的严格审核，并根据审核结果确定其信用额度，允许其在团团赚发布贷款信息的借款标。<br />
								网络信用标适用于团团赚100%本金保障计划；高收益、低风险，投资无忧。<br /> 产品参数：<br />
								年化利率：12%-15%<br /> 借款期限：1-12个月<br /> 逾期垫付方式：逾期30天后垫付<br />
								风险备用金垫付范围：未还本金
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>什么是车辆抵押标？</dt>
							<dd>
								车辆抵押标显示“车”字标记。<br />
								是指有资金需求的借款人向团团赚平台提出自有车辆抵押借款申请，由平台专业车辆评估师及征信人员上门调查其车辆信息及个人信用资料，所有资料提交信审部门进行银行级别的严格审核，并根据车辆价值及个人还款能力确定借款额度，在办理车辆抵押手续后允许其在团团赚发布贷款信息的借款标。<br />
								车辆抵押标在借款人提供车辆抵押的同时，适用于团团赚100%本金保障计划；双重保险，让您的投资安心、放心。<br />
								产品参数：<br /> 年化利率：10%-13.2%<br /> 借款期限：3、12、24个月<br />
								逾期垫付方式：逾期30天后垫付<br /> 风险备用金垫付范围：未还本金及逾期当期借款利息
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>什么是房产抵押标？</dt>
							<dd>
								房产抵押标显示“房”字标记。<br />
								是指有资金需求的借款人向团团赚平台提出自有房产抵押借款申请，由平台专业征信人员及房产评估师上门调查取证其房产信息及个人信用资料，所有资料提交信审部门进行银行级别的严格审核，并根据终审确定其借款额度，在办理房产抵押手续后允许其在团团赚发布贷款信息的借款标。<br />
								房产抵押标在借款人提供房产抵押的同时，由第三方担保公司提供本息担保；双重保险，让您的投资安心、放心。<br /> 产品参数：<br />
								年化利率：8%-10%<br /> 借款期限：3、6个月<br /> 逾期垫付方式：逾期30天后垫付<br />
								第三方担保公司垫付范围：未还本金及逾期当期借款利息
							</dd>
						</dl>
					</li>
				</ul>
			</dd>
			<dd class="question-list-wrap" style="display: none;">
				<ul>
					<li class="question">
						<dl>
							<dt>如何申请借款？</dt>
							<dd>
								<p>（1）免费注册为团团赚用户；</p>
								<p>（2）填写个人信息、申请实名认证；</p>
								<p>（3）上传资料通过初审，风控部门终审后获得额度（抵押借款需线下办理抵押登记手续）；</p>
								<p>（4）在额度内发标申请借款；</p>
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>什么是借款利率？</dt>
							<dd>
								<p>借款利率，是指一定时期内利息量与本金的比率，通常用百分比表示，按年计算则称为年借款利率。其计算公式是：</p>
								<p>借款利率 = 借款利息量÷ 借款本金÷借款时间×100%</p>
								<p>加上x100%是为了将数字切换成百分率，与乘一的意思相同，计算中可不加，只需记住即可。</p>
								<p>我国的利率由中国人民银行统一管理，中国人民银行确定的利率经国务院批准后执行。</p>
								<p>本网站严格执行《最高人民法院关于人民法院审理借贷案件的若干意见》第六条的规定，民间借贷的利率可以适当高于银行的利率，各地人民法院可根据本地区的实际情况具体掌握，但最高不得超过银行同期借款利率的四倍。超出此限度的，超出部分的利息不予保护。</p>
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>借款前是否需要支付费用？</dt>
							<dd>
								<p>在您借款成功前，团团赚不收取任何费用。</p>
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>借款额度是如何确定的？</dt>
							<dd>
								<p>团团赚借款产品均有额度范围，范围内的具体金额将根据借款人信用等级的评估结果来决定。</p>
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>为什么我的标的已经满标，最后却流标了？</dt>
							<dd>
								<p>团团赚平台会对您近期的还款情况做一个评估，如果您的还款不正常，就会被系统拒绝，导致流标。建议您保持良好的还款信用，在三个月后再发标申请。</p>
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>如果未通过审核，申请资料可否退还？</dt>
							<dd>
								<p>根据行业规范，对于用户申请借款过程中提交的信息和资料不予退还。</p>
								<p>团团赚严格遵守国家相关法律法规，对用户的隐私信息进行保护。未经您的同意，团团赚不会向任何第三方公司、组织和个人披露您的个人信息、账户信息以及交易信息（法律法规另有规定的除外）。</p>
								<p>同时，团团赚公司内部也设有严格、完善的权限管理体系，以保证每一位内部员工都只能查看自己职责和权限之内的数据和信息。</p>
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>为什么没有通过审核？</dt>
							<dd>
								<p>当您没有符合全部借款条件时，无法通过借款审核。</p>
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>为什么没有通过审核？</dt>
							<dd>
								<p>1.团团赚网站根据借款人的收入状况、资产余额、个人信用状况授予借款额度；</p>
								<p>2.尽可能将上述三个方面的信息填写详细并给出证明材料；</p>
								<p>3.按时还款，积累信用，我们每3个月调整一次借款额度；</p>
								<p>4.现场认证可以提高借款额度；</p>
								<p>5.明确的借款用途、有效的线下担保、有效的资产抵押等都可以提升借款额度。</p>
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>借款审核需要多长时间？</dt>
							<dd>
								<p>当您提交完整资料后，团团赚平台一般审核时间为1-4个工作日。</p>
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>借款成功后如何拿到款项？</dt>
							<dd>
								<p>
									当借款成功后，团团赚将会将您筹集到的资金划入您的团团赚账户。您可在登录网站后点击“账户中心”，选择“我要提现”，进行提现操作。资金将在申请提现后1~2个工作日内到达您指定的银行账户。提现前请先确保您已经进行实名认证并绑定银行卡。</p>
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>如何才能成功借款？</dt>
							<dd>
								<p>
									借款人提交借款申请后，通过必要信用认证后，借款人会获得相应的信用等级和信用额度。此时借款人可在团团赚发布借款标的，即开始筹集借款。当招标申请满标后，您的借款申请得到放款批准时即为借款成功，您所筹集的资金将划入您的团团赚账户中，您可以申请提现。</p>
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>能否申请提前还款？</dt>
							<dd>
								⑴借款人在还款3期后，可申请提前还款，提前还款必须一次性付清；如果是部分提前还款，则按照正常还款流程扣款；<br />
								⑵借款人需提前三个工作日向团团赚提出申请，团团赚与借款人约定提前还款日期后，借款人在约定时间内把相应款项存入指定账号；<br />
								⑶提前还款时，借款人须支付全部剩余本金，以及申请当期和下一期的利息及平台管理费；<br />
								⑷借款人提前还款，将获得一定的借款服务费退还，退还剩余期次（去除申请当期及下一期）借款服务费的70%。
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>如果逾期还款，会有什么惩罚？</dt>
							<dd>
								如果逾期还款，借款人要承担罚息与逾期后的管理费用，并会被扣去相应的信用分数。所以团团赚强烈建议用户避免逾期还款，一旦发生逾期请尽快还清借款。
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>逾期还款超过30天，会有什么影响？</dt>
							<dd>
								若借款人违约逾期还款超过30天，团团赚有权将该用户的有关资料正式备案在“不良信用记录”，列入全国个人信用评级体系的黑名单（“不良信用记录”数据将为银行、电信、担保公司、人才中心等有关机构提供个人不良信用信息）。同时保留对该用户采取法律措施的权利，由此所产生的所有法律后果和费用（包括但不限于律师费）将由该用户来承担。
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>如何还款？</dt>
							<dd>
								1.借款人需在约定还款日期结束前，将款项汇入《代扣款委托授权书》中约定的账户，团团赚系统会代借款者自动扣缴当期还款；<br />
								2.借款人可登陆团团赚官网，进入“账户中心”，选择“我要充值”，将还款额存入账户余额后，进入“借款管理－我要还款”中进行还款。<br />
								注：<br />
								1.请勿听信任何人诱导将款项汇入其他银行账户或以现金形式还款，团团赚不对非正常方式还款造成的不良后果负责。如有疑问，请拨打热线电话4000-817-888咨询详情。<br />
								2.借款人通过充值方式还款将产生充值手续费，计算方式请参考“网站资费与利息－借款人收费”。
							</dd>
						</dl>
					</li>
				</ul>
			</dd>
			<dd class="question-list-wrap" style="display: none;">
				<ul>
					<li class="question">
						<dl>
							<dt>如何在团团赚注册？</dt>
							<dd>
								<p>（1）点击团团赚任意页面右上侧的“注册”链接；</p>
								<p>（2）或点击团团赚网站首页右侧的“免费注册”链接；</p>
								<p>（3）进入注册页面后，填写基本注册信息及手机号，获取并输入手机验证码，其中带星号的为必填；</p>
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>如何找回登录密码？</dt>
							<dd>
								<p>如果您遗忘了密码，可以在网站用户登录页面，点击“忘记登录密码”按钮，选择绑定邮箱或注册手机号找回密码。</p>
								<p>（1）点击首页“登录”- 点击“忘记登录密码”。</p>
								<p>（3）可选择“通过手机验证码找回”，“通过安全问题找回”及“通过邮箱找回”</p>
								<p>（4）发送验证码成功。</p>
								<p>（5）输入发送给您的验证码。</p>
								<p>（5）输入发送给您的验证码。</p>
								<p>（6）根据提示，输入新密码，点击确认后，重置密码成功，可使用新密码登录团团赚帐号。</p>
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>什么是交易密码？如何修改？</dt>
							<dd>
								<p>为了让您的提现操作更安全，提现时会要求您输入交易密码，交易密码默认为您的登录密码。请您及时进入“账户管理“-”安全中心“中修改您的交易密码。
								</p>
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>如何让我的账户密码更安全？</dt>
							<dd>
								<p>（1）请使用较长、复杂的字母数字组合以提高密码强度，不要用生日等容易被别人猜中的密码；</p>
								<p>（2）请记住不要与任何人共享您的密码。如果您已经与他人共享了密码，团团赚平台强烈建议您尽快更改；</p>
								<p>（3）您可能在不经意间使计算机受到病毒、木马、间谍软件、广告软件的感染，这些软件也可能记录并盗走您的密码。所以，请安装和使用杀毒软件。
								</p>
								<p>（4）请尽快完成实名认证，以保证资金提现账户的唯一性。</p>
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>为何可提现金额同可用余额不一致？</dt>
							<dd>
								<p>可提现金额并不等同于可用余额，导致两者不一致的情况有三种：</p>
								<p>1、使用快捷支付充值过的用户，有部分银行卡的提现可能受限。具体参见同卡进出规则；</p>
								<p>2、有发布过净值贷，且可提现余额小于可用余额。具体参见净值贷借款人的可提现金额计算方式；</p>
								<p>3、使用过体验卡，却没有过投资或仅投资净值贷的用户。具体参见体验卡背面的注意事项。</p>
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>为何我的充值失败了？</dt>
							<dd>
								<p>（1）首先，请确认您的银行卡已经开通了网上银行服务。（可与银行卡发开行确认）</p>
								<p>（2）确保您的卡上有足够的余额</p>
								<p>（3）使用IE浏览器打开充值页面</p>
								<p>（4）安装网银支付所需的数字证书</p>
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>为何我的充值有限额？</dt>
							<dd>
								<p>团团赚不对充值金额做限制，如遇到金额受限，请咨询您所使用的银行卡发开行。 开行确认）</p>
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>提现后多久会到账？</dt>
							<dd>
								<p>当您提交提现申请后，团团赚将在1个工作日内进行处理，在您收到提现申请处理成功的短信通知后，款项将从第三方平台转账至您指定的银行卡中，一般情况下1-2个工作日内到账。如提交后超出1个工作日未收到团团赚提现成功短信，请您拨打热线400-1110-888进行查询。</p>
							</dd>
						</dl>
					</li>
					<li class="question">
						<dl>
							<dt>投资红包的使用规则是什么？</dt>
							<dd>
								<p>
									单笔投资金额每满500元，限用1个5元红包；单笔投资金额每满1000元，限用1个10元或10元以下金额红包；单笔投资金额每满2000元，限用1个20元或20元以下金额红包；单笔投资金额每满5000元，限用1个50元或50元以下金额红包<br />
									同一期产品每人只能使用一次红包
								</p>
							</dd>
						</dl>
					</li>
				</ul>
			</dd>
			<dd class="question-list-wrap" style="display: none;">
				<ul>
					<li class="question">
						<dl>
							<dt>常用名词</dt>
							<dd>
								借款人：<br />
								也称贷款人（资金需求方），是指已经或准备在团团赚网站上进行借款活动的用户。凡22周岁以上的中国大陆地区公民，都可以成为借款人。<br />
								投资人：<br />
								也称出借人（或投资者、资金出借方），是指已经或准备在团团赚网站上进行出借活动的用户。凡18周岁以上的中国大陆地区公民，都可以成为投资人。<br />
								借款列表：<br /> 当借款人成功发布一个借款请求时，我们将包含各种贷款信息的该请求称为一个借款列表。<br /> 招标：<br />
								是指一个借款人发出一个借款请求，即创建一个借款列表的行为。<br /> 投标：<br />
								是指投资人将其账户内指定的金额出借给其指定的借款列表的行为。<br /> 满标：<br />
								是指一个借款列表在投标期限内足额筹集到所需资金。<br /> 放款：<br />
								指一个借款列表满标后且已符合放款标准，团团赚将把所筹资金打入借款人在团团赚的账户中，即成功贷款。<br /> 流标：<br />
								是指一个借款列表的投标期限已过，但是贷款没有足额筹集齐或者在规定期限内未签约成功，即贷款失败。<br /> 提现：<br />
								当团团赚客户需要将团团赚账户里的资金转移的时候，可以申请提现，提现仅能将金额提至经过实名认证的客户银行卡中。在用户发起提现申请后，团团赚会在1-2个工作日内完成资金划转。<br />
								投标金额：<br /> 是指投资人对借款列表进行投标的金额。<br /> 帐户总额：<br />
								指用户账户的所有金额（含冻结金额和可用金额）。<br /> 可用金额：<br /> 是指用户可自由支配的金额。<br />
								冻结金额：<br />
								投资人对某借款列表进行投标后，在此列表的招标期结束之前，这部分投标金额将被锁定，“冻结金额”是指因这类型锁定金额的总额。如果列表放款，这部分金额将转给该列表的借款人；如果该列表流标，这部分金额将立即变为用户的可用金额。<br />
								等额本息：<br />
								等额本息还款法是一种被广泛采用的还款方式，在还款期内，每月偿还同等数额的贷款(包括本金和利息)。但每月偿还的本金和利息的比例不同，借款人每月还款额中的本金比重逐月递增、利息比重逐月递减。
								其计算公式如下：
								每月还款额=[贷款本金×月利率×（1+月利率）^还款总期数]÷[（1+月利率）^还款总期数-1],因计算中存在四舍五入，最后一期还款金额与之前略有不同。<br />
								本金保障：<br />
								当借款项目发生逾期超过30日，团团赚网站将立即垫付出借客户100%逾期本息（网商贷垫付100%逾期本金）。
								自借款项目发生逾期之日起，团团赚网站将按照此借款标的年利率折算成日息，根据当期逾期本金按日计算逾期补偿金，直至借款人还款或由团团赚网站执行垫付。<br />
								充值 ：<br />
								团团赚用户将自有资金充入团团赚账户的操作。团团赚与第三方支付公司进行合作，为用户提供便捷、专业的资金转移服务。<br />
								第三方支付：<br />
								所谓第三方支付，就是一些和产品所在国家以及国外各大银行签约、并具备一定实力和信誉保障的第三方独立机构提供的交易支持平台。在通过第三方支付平台的交易中，买方选购商品后，使用第三方平台提供的账户进行货款支付，由第三方通知卖家货款到达、进行发货；买方检验物品后，就可以通知付款给卖家，第三方再将款项转至卖家账户。<br />
								罚息：<br />
								当借款人的借款逾期时，团团赚会对借款人征收额外的利息作为惩罚，这部分利息即为罚息。罚息的计算公式为：非净值贷罚息总额 =
								逾期本息×0.8%×逾期天数；净值贷罚息总额 = 逾期本息×0.05%×逾期天数<br /> 年化利率：<br />
								指把当前收益率（日收益率、周收益率、月收益率）换算成年从而得出的收益率。如果一个借款人标明的年化收益率是13.2%，而其仅借款6个月，则到期年化收益率为6.6%。<br />
								实名认证：<br />
								为了确保您的资金安全，同时也为了确认借款人的身份，团团赚对用户实行实名认证。对于投资人来说，当投资人第一次充值的时候就会触发实名认证。对于借款人来说，实名认证是借款人借款流程不可缺少的一步。<br />
							</dd>
						</dl>
					</li>
				</ul>
			</dd>
		</dl>
	</div>
	<script type="text/javascript">
		$(function() {
			$(".question").on("click", "dt", function() {
				$(this).siblings("dd").toggle().closest(".question").siblings().find("dd").hide();
			});
	
			$(".content-tab").on("click", "li", function() {
				var me = $(this);
				var index = me.index();
	
				me.addClass("sel").siblings().removeClass("sel");
				me.closest("dl").find("dd.question-list-wrap:eq(" + index + ")").show().siblings(".question-list-wrap").hide();
			}).find(".sel").trigger('click');
		});
	</script>
	< !--网站底部-->
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
		seajs.use([ '$', '' ], function($, Accordion) {
			$(document).ready(function() {
				var accordion = new Accordion({
					element : '#faq',
					triggers : '.accordion-trigger',
					panels : '.accordion-panel',
					activeIndex : -99,
					multiple : true,
				}).render();
				accordion.on('switch', function(toIndex, fromIndex) {
					var obj = $($(".accordion-trigger")[toIndex]).children("span");
					if (obj.hasClass('icon-arrow-down2')) {
						obj.removeClass('icon-arrow-down2');
						obj.addClass('icon-arrow-up2');
					} else {
						obj.removeClass('icon-arrow-up2');
						obj.addClass('icon-arrow-down2');
					}
				})
			});
		});
	</script>
</body>
</html>

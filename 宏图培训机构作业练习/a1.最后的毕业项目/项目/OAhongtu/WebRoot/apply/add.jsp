<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

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

		<!-- The styles -->

		<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>

		<script type="text/javascript">
	function check(){
		//alert("1111111111");
		var f1=$("#f1").val();
		var fa=$("#fa").val();
		var ff=$("#ff").val();
		var f2=$("#f2").val();
	    var b=$("#b").val();
		var f4=$("#f4").val();
		var f5=$("#f5").val();
		var f6=$("#f6").val();
		if(f1==""){
			alert("请填写学生姓名！");
			return false;
		}
		if(f1.length>10){
			alert("学生姓名长度不能超过10位！");
			return false;
		}
		
		if(fa==""){
			alert("请填写籍贯！");
			return false;
		}
		if(fa.length>10){
			alert("籍贯长度不能超过10位！");
			return false;
		}
		
		
		if(ff==""){
			alert("请填写学生QQ！");
			return false;
		}
		if(ff.length>10){
			alert("学生联系数位不能超过20位！");
			return false;
		}
		
		if(f2==""){
			alert("请填写就读学校！");
			return false;
		}
		if(f2.length>20){
			alert("学校长度不能超过20位！");
			return false;
		}
		
		if(b==""){
			alert("请填写出生年月！");
			return false;
		}
		
		if(f4==""){
			alert("请填写家长姓名！");
			return false;
		}
		if(f4.length>10){
			alert("家长姓名长度不能超过10位！");
			return false;
		}
		
		if(f5==""){
			alert("请填写家长联系电话！");
			return false;
		}
		if(isNaN(f5)){
			alert("家长联系电话必须是数字！");
			return false;
		}
		if(f5%1!=0){
			alert("家长联系电话必须是整数！");
			return false;
		}
		if(f5.length!=11){
			alert("家长联系电话必须是11位！");
			return false;
		}
		
		
		if(f6==""){
			alert("请填写家庭住址！");
			return false;
		}
		
		return ture;
	}
</script>
	</head>

	<body bgcolor=#FFFFFF alink=#333333 vlink=#333333 link=#333333
		topmargin=0 leftmargin=0 onLoad="init()">
		<form action="zz/add.action" method="post" name="creator"
			enctype="multipart/form-data">
			<jsp:include page="common.jsp"></jsp:include>
			<div class="ch-container">
				<div class="row">


					<div id="content" class="col-lg-10 col-sm-10" style="width: 100%;">
						<!-- content starts -->
						<div>
							<ul class="breadcrumb">
								<li>
								<a href="homepage(tea).jsp">首页</a>
							</li>
							<li>
								<a href="javascript:history.go(-1);">返回上一页</a>
							</li>
							</ul>
						</div>

						<div class="row">
							<div class="box col-md-12">
								<div class="box-inner">
									<div class="box-header well" data-original-title="">
										<h2>
											<i class="glyphicon glyphicon-edit"></i> 添加学生信息
										</h2>

									</div>
									<div class="box-content">
										<table
											class="table table-striped table-bordered bootstrap-datatable datatable responsive"
											width="80%">

											<tbody>
												<tr>
													<th class="center">
														姓名
													</th>
													<td class="center">
														<input id="f1" name="st.intenname" type="text"
															class="form-control" placeholder="请填写姓名" style="width: 400px;">
													</td>
													<th class="center">
														性别
													</th>
													<td class="center">

														<input name="st.intensex" type="radio" value="男" checked />
														男
														<input name="st.intensex" type="radio" value="女" />
														女
													</td>
												</tr>
												<th>
													籍贯
												</th>
												<td class="center">

													<script language="javascript">
												
												var where = new Array(35);
												function comefrom(loca,locacity) { this.loca = loca; this.locacity = locacity; }
												where[0]= new comefrom("请选择省份名","请选择城市名");
												where[1] = new comefrom("北京","|东城|西城|崇文|宣武|朝阳|丰台|石景山|海淀|门头沟|房山|通州|顺义|昌平|大兴|平谷|怀柔|密云|延庆");  //欢迎来到站长特效网，我们的网址是www.zzjs.net，很好记，zz站长，js就是js特效，本站收集大量高质量js代码，还有许多广告代码下载。
												where[2] = new comefrom("上海","|黄浦|卢湾|徐汇|长宁|静安|普陀|闸北|虹口|杨浦|闵行|宝山|嘉定|浦东|金山|松江|青浦|南汇|奉贤|崇明");//欢迎来到站长特效网，我们的网址是www.zzjs.net，很好记，zz站长，js就是js特效，本站收集大量高质量js代码，还有许多广告代码下载。
												where[3] = new comefrom("天津","|和平|东丽|河东|西青|河西|津南|南开|北辰|河北|武清|红挢|塘沽|汉沽|大港|宁河|静海|宝坻|蓟县");
												where[4] = new comefrom("重庆","|万州|涪陵|渝中|大渡口|江北|沙坪坝|九龙坡|南岸|北碚|万盛|双挢|渝北|巴南|黔江|长寿|綦江|潼南|铜梁|大足|荣昌|壁山|梁平|城口|丰都|垫江|武隆|忠县|开县|云阳|奉节|巫山|巫溪|石柱|秀山|酉阳|彭水|江津|合川|永川|南川");
												where[5] = new comefrom("河北","|石家庄|邯郸|邢台|保定|张家口|承德|廊坊|唐山|秦皇岛|沧州|衡水");
												where[6] = new comefrom("山西","|太原|大同|阳泉|长治|晋城|朔州|吕梁|忻州|晋中|临汾|运城");
												where[7] = new comefrom("内蒙古","|呼和浩特|包头|乌海|赤峰|呼伦贝尔盟|阿拉善盟|哲里木盟|兴安盟|乌兰察布盟|锡林郭勒盟|巴彦淖尔盟|伊克昭盟");
												where[8] = new comefrom("辽宁","|沈阳|大连|鞍山|抚顺|本溪|丹东|锦州|营口|阜新|辽阳|盘锦|铁岭|朝阳|葫芦岛");
												where[9] = new comefrom("吉林","|长春|吉林|四平|辽源|通化|白山|松原|白城|延边");
												where[10] = new comefrom("黑龙江","|哈尔滨|齐齐哈尔|牡丹江|佳木斯|大庆|绥化|鹤岗|鸡西|黑河|双鸭山|伊春|七台河|大兴安岭");
												where[11] = new comefrom("江苏","|南京|镇江|苏州|南通|扬州|盐城|徐州|连云港|常州|无锡|宿迁|泰州|淮安");
												where[12] = new comefrom("浙江","|杭州|宁波|温州|嘉兴|湖州|绍兴|金华|衢州|舟山|台州|丽水");
												where[13] = new comefrom("安徽","|合肥|芜湖|蚌埠|马鞍山|淮北|铜陵|安庆|黄山|滁州|宿州|池州|淮南|巢湖|阜阳|六安|宣城|亳州");
												where[14] = new comefrom("福建","|福州|厦门|莆田|三明|泉州|漳州|南平|龙岩|宁德");
												where[15] = new comefrom("江西","|南昌市|景德镇|九江|鹰潭|萍乡|新馀|赣州|吉安|宜春|抚州|上饶");
												where[16] = new comefrom("山东","|济南|青岛|淄博|枣庄|东营|烟台|潍坊|济宁|泰安|威海|日照|莱芜|临沂|德州|聊城|滨州|菏泽");
												where[17] = new comefrom("河南","|郑州|开封|洛阳|平顶山|安阳|鹤壁|新乡|焦作|濮阳|许昌|漯河|三门峡|南阳|商丘|信阳|周口|驻马店|济源");
												where[18] = new comefrom("湖北","|武汉|宜昌|荆州|襄樊|黄石|荆门|黄冈|十堰|恩施|潜江|天门|仙桃|随州|咸宁|孝感|鄂州");
												where[19] = new comefrom("湖南","|长沙|常德|株洲|湘潭|衡阳|岳阳|邵阳|益阳|娄底|怀化|郴州|永州|湘西|张家界");
												where[20] = new comefrom("广东","|广州|深圳|珠海|汕头|东莞|中山|佛山|韶关|江门|湛江|茂名|肇庆|惠州|梅州|汕尾|河源|阳江|清远|潮州|揭阳|云浮");
												where[21] = new comefrom("广西","|南宁|柳州|桂林|梧州|北海|防城港|钦州|贵港|玉林|南宁地区|柳州地区|贺州|百色|河池");
												where[22] = new comefrom("海南","|海口|三亚");
												where[23] = new comefrom("四川","|成都|绵阳|德阳|自贡|攀枝花|广元|内江|乐山|南充|宜宾|广安|达川|雅安|眉山|甘孜|凉山|泸州");
												where[24] = new comefrom("贵州","|贵阳|六盘水|遵义|安顺|铜仁|黔西南|毕节|黔东南|黔南");
												where[25] = new comefrom("云南","|昆明|大理|曲靖|玉溪|昭通|楚雄|红河|文山|思茅|西双版纳|保山|德宏|丽江|怒江|迪庆|临沧");
												where[26] = new comefrom("西藏","|拉萨|日喀则|山南|林芝|昌都|阿里|那曲");
												where[27] = new comefrom("陕西","|西安|宝鸡|咸阳|铜川|渭南|延安|榆林|汉中|安康|商洛");
												where[28] = new comefrom("甘肃","|兰州|嘉峪关|金昌|白银|天水|酒泉|张掖|武威|定西|陇南|平凉|庆阳|临夏|甘南");
												where[29] = new comefrom("宁夏","|银川|石嘴山|吴忠|固原");
												where[30] = new comefrom("青海","|西宁|海东|海南|海北|黄南|玉树|果洛|海西");
												where[31] = new comefrom("新疆","|乌鲁木齐|石河子|克拉玛依|伊犁|巴音郭勒|昌吉|克孜勒苏柯尔克孜|博尔塔拉|吐鲁番|哈密|喀什|和田|阿克苏");
												where[32] = new comefrom("香港","");
												where[33] = new comefrom("澳门","");
												where[34] = new comefrom("台湾","|台北|高雄|台中|台南|屏东|南投|云林|新竹|彰化|苗栗|嘉义|花莲|桃园|宜兰|基隆|台东|金门|马祖|澎湖");
												where[35] = new comefrom("其它","|北美洲|南美洲|亚洲|非洲|欧洲|大洋洲");
												function select() {
												with(document.creator.province) { var loca2 = options[selectedIndex].value; }
												for(i = 0;i < where.length;i ++) {
												if (where[i].loca == loca2) {
												loca3 = (where[i].locacity).split("|");
												for(j = 0;j < loca3.length;j++) { with(document.creator.city) { length = loca3.length; options[j].text = loca3[j]; options[j].value = loca3[j]; var loca4=options[selectedIndex].value;}}
												break;
												}}
												document.creator.newlocation.value=loca2+loca4;
												}
												function init() {
												with(document.creator.province) {
												length = where.length;
												for(k=0;k<where.length;k++) { options[k].text = where[k].loca; options[k].value = where[k].loca; }
												options[selectedIndex].text = where[0].loca; options[selectedIndex].value = where[0].loca;
												}
												with(document.creator.city) {
												loca3 = (where[0].locacity).split("|");
												length = loca3.length;
												for(l=0;l<length;l++) { options[l].text = loca3[l]; options[l].value = loca3[l]; }
												options[selectedIndex].text = loca3[0]; options[selectedIndex].value = loca3[0];
												}} //欢迎来到站长特效网，我们的网址是www.zzjs.net，很好记，zz站长，js就是js特效，本站收集大量高质量js代码，还有许多广告代码下载。
											
												</script>

													<b>省份</b>
													<select name="province" onChange="select()"></select>
													<b>城市</b>
													<select name="city" onChange="select()"></select><br/>
													<b>我在</b>
													<input type=text name="newlocation" maxlength=12 size=12
														style="font-weight: bold">

												</td>
												
												<th>
													QQ
												</th>
												<td class="center">
													<input id="ff" name="st.intemail" type="text"
														class="form-control" style="width: 400px;"
														placeholder="请填写QQ">

												</td>



												<tr>
													<th>
														就读学校
													</th>
													<td class="center">
														<input id="f2" name="st.intensch" type="text"
															class="form-control" style="width: 400px;"
															placeholder="请填写就读学校">
													</td>

													<th>
														出生年月
													</th>
													<td class="center" colspan="3">
														<input id="b" name="st.intenbir" style="width: 400px;"
															type="text"
															onclick="WdatePicker({dateFmt:'yyyy-MM-dd'});"
															class="form-control" placeholder="请填写出生年月" />
													</td>

												</tr>

												<tr>
													<th>
														家长姓名
													</th>
													<td class="center">
														<input id="f4" name="st.intenfat" type="text"
															class="form-control" style="width: 400px;"
															placeholder="请填写家长姓名">
													</td>
													<th class="center">
														家长联系电话
													</th>
													<td class="center">
														<input id="f5" name="st.intenfatel" type="text"
															class="form-control" style="width: 400px;"
															placeholder="请填写家长联系电话">
													</td>
												</tr>
												<tr>
													<th>
														家庭住址
													</th>
													<td class="center" colspan="3">
														<input id="f6" name="st.intenaddr" type="text"
															class="form-control" placeholder="或现居住地址"
															style="width: 700px;" name="applystudent.INTENADDR">
													</td>
												</tr>
											</tbody>

										</table>

										<!-- submit提交按钮样式 -->
										<div class="box-content">
											<div class="control-group">
												<button type="submit" class="btn btn-default"
													style="width: 100px; margin-left: 380px; margin-top: 8px;"
													onclick="return check();">
													<b>添 加</b>
												</button>
											</div>
										</div>

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
		</form>
	</body>
</html>

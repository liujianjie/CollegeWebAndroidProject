<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>与商家沟通</title>
    

  </head>
  
  <body>
	<form action="jieshou?method=jieshou" name="frm" method="post">
		<textarea rows="20" cols="80" >${message }</textarea><br><br>
		<textarea rows="7" cols="80" name="message" id="tx1" onfocus="moveEnd(this);">${neirong }</textarea><br>
		<input type="submit" value="发送 ">
	</form> 
	<script>
		//焦点
		document.frm.message.focus();
		//document.getElementById("tx1").focus();
		setTimeout("shuaxing()",6000);//7s刷新一次去后台 为了刷新text1
		function shuaxing(){
			//刷新之前获取值
			var str=document.frm.message.value;

			//location.reload();
			//去后台保存值吧
			location.href="jieshou?method=khdbaocun&neirong="+str;
		}
		function moveEnd(obj) {
		obj.focus();
		var len = obj.value.length;
		if (document.selection) {
		var sel = obj.createTextRange();
		sel.moveStart('character', len);
		sel.collapse();
		sel.select();
		} else if (typeof obj.selectionStart == 'number'
		&& typeof obj.selectionEnd == 'number') {
		obj.selectionStart = obj.selectionEnd = len;
		}
		}
	</script>
	
  </body>
</html>

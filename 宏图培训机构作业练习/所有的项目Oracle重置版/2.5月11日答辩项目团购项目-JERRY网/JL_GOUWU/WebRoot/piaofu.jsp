<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>带关闭按钮的浮动窗口代码(全屏漂浮)</title>
</head>
<style type="text/css">
#fdck {border:1px solid #c0c0c0;margin:0 auto;padding:5px;background:#f0f0f0}
</style>
<body>
<div id="img" style="position: absolute; left: 311; top: 815;visibility :hidden;" onmouseover="clearInterval(interval)" onmouseout="interval = setInterval('changePos()', delay)" align="middle">
<span style="CURSOR:hand;color:red;font-weight:bold;font-size:12px" onclick="clearInterval(interval);img.style.visibility = 'hidden'">关闭</span>
<div id="fdck">
欢迎来到营了个销！<br>http://www.hcsem.com/
</div>
</div>
<script language=javascript>
var xPos = 20;
var yPos = document.body.clientHeight;
var step = 1;
var delay = 30;
var height = 0;
var Hoffset = 0;
var Woffset = 0;
var yon = 0;
var xon = 0;
var pause = true;
var interval;
img.style.top = yPos;
function changePos() {
width = document.body.clientWidth;
height = document.body.clientHeight;
Hoffset = img.offsetHeight;
Woffset = img.offsetWidth;
img.style.left = xPos + document.body.scrollLeft;
img.style.top = yPos + document.body.scrollTop;
if (yon) {
yPos = yPos + step;
}
else {
yPos = yPos - step;
}
if (yPos < 0) {
yon = 1;
yPos = 0;
}
if (yPos >= (height - Hoffset)) {
yon = 0;
yPos = (height - Hoffset);
}
if (xon) {
xPos = xPos + step;
}
else {
xPos = xPos - step;
}
if (xPos < 0) {
xon = 1;
xPos = 0;
}
if (xPos >= (width - Woffset)) {
xon = 0;
xPos = (width - Woffset);
}
}
function start() {
img.style.visibility = "visible";
interval = setInterval('changePos()', delay);
}
start();
</script>
</body>
</html> 

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="http://localhost:8080/JL_GOUWU/">
    
    <title>My JSP 'top.jsp' starting page</title>
    <style>
    	.toptext{font-size:25px}
    	#foot a{text-decoration: none;color: black}
    	#foot a:hover {color:#008080;}
    	.leftstyle{
			border-style:solid; 
			border-width:1px;
			border-top-color:#f9f9f9;
			border-bottom-color:#ebebeb;
			border-right-color:#ebebeb;
			border-left-color:#ebebeb;
			background-color:#f9f9f9;
			height:50px;
			width:260px;

		}
		.leftstyle:hover{
			border-style:solid; 
			border-width:1px;
			border-top-color:white;
			border-bottom-color:white;
			border-right-color:white;
			border-left-color:#a5a5a5;
			background-color:white;
			height:50px;
			width:260px;

		}
		#topfoot a{text-decoration: none;color: white}
		.allmoldstop{
			border-style:solid; 
			border-width:1px;
			border-top-color:#008080;
			border-bottom-color:#008080;
			border-right-color:#008080;
			border-left-color:#008080;
			background-color:#008080;
			height:50px;
			width:260px;

		}
		 #wrap {
  			height:50px;
  			display:table;
 		}
 		#content {
  			vertical-align:middle;
  			display:table-cell;
 		}	
    </style>
  </head>
  
  <body style="margin:0px;padding:0px">
    <!--改变字体样式#foot a:hover {color:#008080;}-->
   	<!--头顶（全部分类）的字体样式 #topfoot a{text-decoration: none;color: white}-->
	<!--居中字体 wrap  content-->
  	<table width="70%" align="right">
  		<tr height="50">
  				<td>
    				<div id="topfoot" class="allmoldstop">
    				<div id="wrap">
  					<div id="content" class="toptext">
  						<a>&nbsp;全部分类</a>
  					</div>
  					</div>
  					</div>
  				</td>
  		</tr>
	  	
	  		<tr>
	  			<td>
		  		    <div id="foot" class="leftstyle">
    				<div id="wrap">
  					<div id="content">
			  			<a href="goods?method=qtlist&moldid=1" target="main"><font size="4"><b>&nbsp&nbsp美食</b></font></a>
			  		</div>
  					</div>
  					</div>
			  	</td>
		  	 </tr>
	  	
	  		<tr>
	  			<td>
		  		    <div id="foot" class="leftstyle">
    				<div id="wrap">
  					<div id="content">
			  			<a href="goods?method=qtlist&moldid=2" target="main"><font size="4"><b>&nbsp&nbsp电影</b></font></a>
			  		</div>
  					</div>
  					</div>
			  	</td>
		  	 </tr>
	  	
	  		<tr>
	  			<td>
		  		    <div id="foot" class="leftstyle">
    				<div id="wrap">
  					<div id="content">
			  			<a href="goods?method=threeqtlist&id=50&moldid=3" target="main"><font size="4"><b>&nbsp&nbspKTV</b></font></a>
			  		</div>
  					</div>
  					</div>
			  	</td>
		  	 </tr>
	  	
	  		<tr>
	  			<td>
		  		    <div id="foot" class="leftstyle">
    				<div id="wrap">
  					<div id="content">
			  			<a href="goods?method=qtlist&moldid=4" target="main"><font size="4"><b>&nbsp&nbsp休闲娱乐</b></font></a>
			  		</div>
  					</div>
  					</div>
			  	</td>
		  	 </tr>
	  	
	  		<tr>
	  			<td>
		  		    <div id="foot" class="leftstyle">
    				<div id="wrap">
  					<div id="content">
			  			<a href="goods?method=qtlist&moldid=5" target="main"><font size="4"><b>&nbsp&nbsp生活服务</b></font></a>
			  		</div>
  					</div>
  					</div>
			  	</td>
		  	 </tr>
	  	
	  		<tr>
	  			<td>
		  		    <div id="foot" class="leftstyle">
    				<div id="wrap">
  					<div id="content">
			  			<a href="goods?method=qtlist&moldid=6" target="main"><font size="4"><b>&nbsp&nbsp购物</b></font></a>
			  		</div>
  					</div>
  					</div>
			  	</td>
		  	 </tr>
	  	
	  		<tr>
	  			<td>
		  		    <div id="foot" class="leftstyle">
    				<div id="wrap">
  					<div id="content">
			  			<a href="goods?method=qtlist&moldid=7" target="main"><font size="4"><b>&nbsp&nbsp丽人</b></font></a>
			  		</div>
  					</div>
  					</div>
			  	</td>
		  	 </tr>
	  		<tr>
	  			<td>
		  		    <div id="foot" class="leftstyle">
    				<div id="wrap">
  					<div id="content">
			  			<a href="goods?method=qtlist&moldid=8" target="main"><font size="4"><b>&nbsp&nbsp周边游</b></font></a>
			  		</div>
  					</div>
  					</div>
			  	</td>
		  	 </tr>
		  	 <tr height="65" bgcolor="#f9f9f9">
	  			<td>
		  		    &nbsp;
			  	</td>
		  	 </tr>

  	</table>
  	<br/>
  </body>
</html>


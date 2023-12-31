<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>宏图软件办公系统</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description"
			content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
		<meta name="author" content="Muhammad Usman">
		<!-- The styles -->
		<link id="bs-css" href="css/bootstrap-cerulean.min.css"
			rel="stylesheet">

		<link href="css/charisma-app.css" rel="stylesheet">
		<link href='bower_components/fullcalendar/dist/fullcalendar.css'
			rel='stylesheet'>
		<link href='bower_components/fullcalendar/dist/fullcalendar.print.css'
			rel='stylesheet' media='print'>
		<link href='bower_components/chosen/chosen.min.css' rel='stylesheet'>
		<link href='bower_components/colorbox/example3/colorbox.css'
			rel='stylesheet'>
		<link href='bower_components/responsive-tables/responsive-tables.css'
			rel='stylesheet'>
		<link
			href='bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css'
			rel='stylesheet'>
		<link href='css/jquery.noty.css' rel='stylesheet'>
		<link href='css/noty_theme_default.css' rel='stylesheet'>
		<link href='css/elfinder.min.css' rel='stylesheet'>
		<link href='css/elfinder.theme.css' rel='stylesheet'>
		<link href='css/jquery.iphone.toggle.css' rel='stylesheet'>
		<link href='css/uploadify.css' rel='stylesheet'>
		<link href='css/animate.min.css' rel='stylesheet'>

		<!-- jQuery -->
		<script src="bower_components/jquery/jquery.min.js"></script>

		<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
		<!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

		<!-- The fav icon -->
		<link rel="shortcut icon" href="img/favicon.ico">
	</head>

	<body>

		<div>
			<ul class="breadcrumb">
				<li>
					<a href="#">Home</a>
				</li>
				<li>
					<a href="#">Dashboard</a>
				</li>
			</ul>
		</div>
		<div class=" row">
			<div class="col-md-3 col-sm-3 col-xs-6">
				<a data-toggle="tooltip" title="6 new members."
					class="well top-block" href="#"> <i
					class="glyphicon glyphicon-user blue"></i>

					<div>
						Total Members
					</div>
					<div>
						507
					</div> <span class="notification">6</span> </a>
			</div>

			<div class="col-md-3 col-sm-3 col-xs-6">
				<a data-toggle="tooltip" title="4 new pro members."
					class="well top-block" href="#"> <i
					class="glyphicon glyphicon-star green"></i>

					<div>
						Pro Members
					</div>
					<div>
						228
					</div> <span class="notification green">4</span> </a>
			</div>

			<div class="col-md-3 col-sm-3 col-xs-6">
				<a data-toggle="tooltip" title="$34 new sales."
					class="well top-block" href="#"> <i
					class="glyphicon glyphicon-shopping-cart yellow"></i>

					<div>
						Sales
					</div>
					<div>
						$13320
					</div> <span class="notification yellow">$335</span> </a>
			</div>

			<div class="col-md-3 col-sm-3 col-xs-6">
				<a data-toggle="tooltip" title="12 new messages."
					class="well top-block" href="#"> <i
					class="glyphicon glyphicon-envelope red"></i>

					<div>
						Messages
					</div>
					<div>
						25
					</div> <span class="notification red">12</span> </a>
			</div>
		</div>

		<div class="row">
			<div class="box col-md-12">
				<div class="box-inner">
					<div class="box-header well">
						<h2>
							<i class="glyphicon glyphicon-info-sign"></i>通知/公告
						</h2>

						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round btn-default"><i
								class="glyphicon glyphicon-cog"></i>
							</a>
							<a href="#" class="btn btn-minimize btn-round btn-default"><i
								class="glyphicon glyphicon-chevron-up"></i>
							</a>
							<a href="#" class="btn btn-close btn-round btn-default"><i
								class="glyphicon glyphicon-remove"></i>
							</a>
						</div>
					</div>
					<div class="box-content row">
						<div class="col-lg-7 col-md-12" style="height: 250px">
							<marquee direction="up" scrollamount="2" vspace="30px"
								width="400px" height="150px" onmouseout="this.start()"
								onmouseover="this.stop()">
								<ul>
									<li>
										瑞曼网站管理系统！
									</li>
									<li>
										专业管理企业网站！
									</li>
									<li>
										瑞曼网站管理系统！
									</li>
									<li>
										专业管理企业网站！
									</li>
									<li>
										瑞曼网站管理系统！
									</li>
								</ul>
							</marquee>

							<p class="center-block download-buttons">
								<a href="http://usman.it/free-responsive-admin-template/"
									class="btn btn-primary btn-lg"><i
									class="glyphicon glyphicon-chevron-left glyphicon-white"></i>
									Back to article</a>
								<a href="http://usman.it/free-responsive-admin-template/"
									class="btn btn-default btn-lg"><i
									class="glyphicon glyphicon-download-alt"></i> Download Page</a>
							</p>
						</div>
						<!-- Ads, you can remove these -->
						<div class="col-lg-5 col-md-12 hidden-xs center-text"
							style="height: 50px">
							<script async
								src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
							<!-- Charisma Demo 4 -->
							<ins class="adsbygoogle"
								style="display: inline-block; width: 336px; height: 280px"
								data-ad-client="ca-pub-5108790028230107"
								data-ad-slot="9467443105"></ins>
							<script>
                        (adsbygoogle = window.adsbygoogle || []).push({});
                    </script>
						</div>

						<div class="col-lg-5 col-md-12 visible-xs center-text"
							style="height: 30px">
							<script async
								src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
							<!-- Charisma Demo 5 -->
							<ins class="adsbygoogle"
								style="display: inline-block; width: 250px; height: 250px"
								data-ad-client="ca-pub-5108790028230107"
								data-ad-slot="8957582309"></ins>
							<script>
                        (adsbygoogle = window.adsbygoogle || []).push({});
                    </script>
						</div>
						<!-- Ads end -->

					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="box col-md-4">
				<div class="box-inner homepage-box">
					<div class="box-header well">
						<h2>
							<i class="glyphicon glyphicon-th"></i> Tabs
						</h2>

						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round btn-default"><i
								class="glyphicon glyphicon-cog"></i>
							</a>
							<a href="#" class="btn btn-minimize btn-round btn-default"><i
								class="glyphicon glyphicon-chevron-up"></i>
							</a>
							<a href="#" class="btn btn-close btn-round btn-default"><i
								class="glyphicon glyphicon-remove"></i>
							</a>
						</div>
					</div>
					<div class="box-content">
						<ul class="nav nav-tabs" id="myTab">
							<li class="active">
								<a href="#info">Info</a>
							</li>
							<li>
								<a href="#custom">Custom</a>
							</li>
							<li>
								<a href="#messages">Messages</a>
							</li>
						</ul>

						<div id="myTabContent" class="tab-content">
							<div class="tab-pane active" id="info">
								<h3>
									Charisma
									<small>a full featured template</small>
								</h3>
								<p>
									It's a full featured, responsive template for your admin panel.
									It's optimized for tablets and mobile phones.
								</p>

								<p>
									Check how it looks on different devices:
								</p>
								<a
									href="http://www.responsinator.com/?url=usman.it%2Fthemes%2Fcharisma"
									target="_blank"><strong>Preview on iPhone size.</strong>
								</a>
								<br>
								<a
									href="http://www.responsinator.com/?url=usman.it%2Fthemes%2Fcharisma"
									target="_blank"><strong>Preview on iPad size.</strong>
								</a>
							</div>
							<div class="tab-pane" id="custom">
								<h3>
									Custom
									<small>small text</small>
								</h3>
								<p>
									Sample paragraph.
								</p>

								<p>
									Your custom text.
								</p>
							</div>
							<div class="tab-pane" id="messages">
								<h3>
									Messages
									<small>small text</small>
								</h3>
								<p>
									Sample paragraph.
								</p>

								<p>
									Your custom text.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--/span-->

			<div class="box col-md-4">
				<div class="box-inner">
					<div class="box-header well" data-original-title="">
						<h2>
							<i class="glyphicon glyphicon-user"></i> Member Activity
						</h2>

						<div class="box-icon">
							<a href="#" class="btn btn-minimize btn-round btn-default"><i
								class="glyphicon glyphicon-chevron-up"></i>
							</a>
							<a href="#" class="btn btn-close btn-round btn-default"><i
								class="glyphicon glyphicon-remove"></i>
							</a>
						</div>
					</div>
					<div class="box-content">
						<div class="box-content">
							<ul class="dashboard-list">
								<li>
									<a href="#"> <img class="dashboard-avatar" alt="Usman"
											src="http://www.gravatar.com/avatar/f0ea51fa1e4fae92608d8affee12f67b.png?s=50">
									</a>
									<strong>Name:</strong>
									<a href="#">Usman </a>
									<br>
									<strong>Since:</strong> 17/05/2014
									<br>
									<strong>Status:</strong>
									<span class="label-success label label-default">Approved</span>
								</li>
								<li>
									<a href="#"> <img class="dashboard-avatar"
											alt="Sheikh Heera"
											src="http://www.gravatar.com/avatar/3232415a0380253cfffe19163d04acab.png?s=50">
									</a>
									<strong>Name:</strong>
									<a href="#">Sheikh Heera </a>
									<br>
									<strong>Since:</strong> 17/05/2014
									<br>
									<strong>Status:</strong>
									<span class="label-warning label label-default">Pending</span>
								</li>
								<li>
									<a href="#"> <img class="dashboard-avatar" alt="Abdullah"
											src="http://www.gravatar.com/avatar/46056f772bde7c536e2086004e300a04.png?s=50">
									</a>
									<strong>Name:</strong>
									<a href="#">Abdullah </a>
									<br>
									<strong>Since:</strong> 25/05/2014
									<br>
									<strong>Status:</strong>
									<span class="label-default label label-danger">Banned</span>
								</li>
								<li>
									<a href="#"> <img class="dashboard-avatar" alt="Sana Amrin"
											src="http://www.gravatar.com/avatar/hash">
									</a>
									<strong>Name:</strong>
									<a href="#">Sana Amrin</a>
									<br>
									<strong>Since:</strong> 17/05/2014
									<br>
									<strong>Status:</strong>
									<span class="label label-info">Updates</span>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!--/span-->

			<div class="box col-md-4">
				<div class="box-inner homepage-box">
					<div class="box-header well" data-original-title="">
						<h2>
							<i class="glyphicon glyphicon-list-alt"></i> Keep in touch
						</h2>

						<div class="box-icon">
							<a href="#" class="btn btn-minimize btn-round btn-default"><i
								class="glyphicon glyphicon-chevron-up"></i>
							</a>
							<a href="#" class="btn btn-close btn-round btn-default"><i
								class="glyphicon glyphicon-remove"></i>
							</a>
						</div>
					</div>
					<div class="box-content">
						<h3>
							Stay updated with my projects and blog posts
						</h3>
						<!-- Begin MailChimp Signup Form -->
						<div class="mc_embed_signup">
							<form
								action="//halalit.us3.list-manage.com/subscribe/post?u=444b176aa3c39f656c66381f6&amp;id=eeb0c04e84"
								method="post" id="mc-embedded-subscribe-form"
								name="mc-embedded-subscribe-form" class="validate"
								target="_blank" novalidate>
								<div>
									<label>
										Please enter your email
									</label>
									<input type="email" value="" name="EMAIL" class="email"
										placeholder="Email address" required>

									<div class="power_field">
										<input type="text"
											name="b_444b176aa3c39f656c66381f6_eeb0c04e84" tabindex="-1"
											value="">
									</div>
									<div class="clear">
										<input type="submit" value="Subscribe" name="subscribe"
											class="button">
									</div>
								</div>
							</form>
						</div>

						<!--End mc_embed_signup-->
						<br />

						<p>
							You may like my other open source work, check my profile on
							<a href="http://github.com/usmanhalalit" target="_blank">GitHub</a>.
						</p>

					</div>
				</div>
			</div>
			<!--/span-->
		</div>
		<!--/row-->






		<!-- external javascript -->

		<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

		<!-- library for cookie management -->
		<script src="js/jquery.cookie.js"></script>
		<!-- calender plugin -->
		<script src='bower_components/moment/min/moment.min.js'></script>
		<script src='bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
		<!-- data table plugin -->
		<script src='js/jquery.dataTables.min.js'></script>

		<!-- select or dropdown enhancer -->
		<script src="bower_components/chosen/chosen.jquery.min.js"></script>
		<!-- plugin for gallery image view -->
		<script src="bower_components/colorbox/jquery.colorbox-min.js"></script>
		<!-- notification plugin -->
		<script src="js/jquery.noty.js"></script>
		<!-- library for making tables responsive -->
		<script src="bower_components/responsive-tables/responsive-tables.js"></script>
		<!-- tour plugin -->
		<script
			src="bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
		<!-- star rating plugin -->
		<script src="js/jquery.raty.min.js"></script>
		<!-- for iOS style toggle switch -->
		<script src="js/jquery.iphone.toggle.js"></script>
		<!-- autogrowing textarea plugin -->
		<script src="js/jquery.autogrow-textarea.js"></script>
		<!-- multiple file upload plugin -->
		<script src="js/jquery.uploadify-3.1.min.js"></script>
		<!-- history.js for cross-browser state change on ajax -->
		<script src="js/jquery.history.js"></script>
		<!-- application script for Charisma demo -->
		<script src="js/charisma.js"></script>

	</body>
</html>

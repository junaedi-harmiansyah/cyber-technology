<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page"%>
<!DOCTYPE html>
<!-- main.jsp decorator //-->
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><decorator:title></decorator:title></title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!--CSS File-->
<!-- Font Awesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/font-awesome440.min.css">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/ionicons.min.css">
<!-- DataTables -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/dataTables.bootstrap.min.css">
<!-- bootstrap datepicker -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/bootstrap-datepicker.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/AdminLTE.min.css">
<!-- AdminLTE Skins -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/skin-black.min.css">
<!-- Google font -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/fonts.googleapis.css">

<!-- JS File -->
<!-- jQuery 3 -->
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script
	src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/dataTables.bootstrap.min.js"></script>
<!-- bootstrap datepicker -->
<script
	src="${pageContext.request.contextPath}/assets/js/bootstrap-datepicker.min.js"></script>
<!-- AdminLTE App -->
<script
	src="${pageContext.request.contextPath}/assets/js/adminlte.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.serializejson.js"></script>
<!-- Notify -->
<script src="${pageContext.request.contextPath}/assets/js/notify.min.js"></script>


<!-- Plugin File -->
<!-- Bootstrap WYSIHTML5 -->
<script
	src="${pageContext.request.contextPath}/assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- iCheck -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/plugins/iCheck/flat/blue.css">
<!-- jvectormap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

<!-- dist file -->
<!-- skin -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/dist/css/skins/_all-skins.min.css">

<decorator:head></decorator:head>

</head>
<body class="hold-transition skin-black sidebar-mini">
	<div id="txt"></div>
	<div class="wrapper">

		<header class="main-header" onload="">
			<!-- Logo -->
			<a href="index2.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>D</b></span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>Dasboard</b></span>
			</a>

			<!-- Header Navbar -->
			<nav class="navbar navbar-static-top" role="navigation">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="push-menu"
					role="button"> <span class="sr-only">Toggle navigation</span>
				</a>
				<!-- Navbar Right Menu -->
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- User Account Menu -->
						<li class="dropdown user user-menu">
							<!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <!-- The user image in the navbar-->
								<img
								src="${pageContext.request.contextPath}/assets/img/employer-login.jpg"
								class="user-image" alt="User Image"> <!-- hidden-xs hides the username on small devices so only the image appears. -->
								<span class="hidden-xs"><b>User login</b></span>
						</a>
							<ul class="dropdown-menu">
								<!-- The user image in the menu -->
								<li class="user-header"><img
									src="${pageContext.request.contextPath}/assets/img/employer-login.jpg"
									class="img-circle" alt="User Image">

									<p>
										User login <small> <p id="userLogin"></p></small>
									</p></li>
								<!-- Menu Footer-->
								<li class="user-footer">
									<div class="pull-left">
										<a href="#" class="btn btn-default btn-flat">Profile</a>
									</div>
									<div class="pull-right">
										<a href="${pageContext.request.contextPath}/logout"
											class="btn btn-default btn-flat">Sign Out</a>
									</div>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<ul class="sidebar-menu">
					<li><a href="index.jsp"><i class="fa fa-home"></i><span>Home</span></a></li>
					<li><a href="product"><i class="fa fa-list"></i><span>Product</span></a></li>
					<!-- <li><a href="biodata"><i class="fa fa-user"></i><span>Biodata</span></a></li>
					<li><a href="batch"><i class="fa fa-book"></i><span>Batch</span></a></li>
					<li><a href="clazz"><i class="fa fa-folder"></i><span>Class</span></a></li> -->
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					<decorator:title></decorator:title>
				</h1>
			</section>

			<!-- Main content -->
			<section class="content">
				<decorator:body></decorator:body>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<div class="pull-right hidden-xs">
				<b>Version</b> 1.0.0
			</div>
			<strong>Copyright &copy; 2019 <a href="#">Juna
					Technology</a>.
			</strong>All rights reserved.
		</footer>
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->

	<script>
		/* var showUserLogin="developer";
		document.getElementById("userLogin").innerHTML =showUserLogin; */
		function loadUser(){
			var xhttp = new XMLHttpRequest();
			xhttp.onreadystatechange = function(){
				if (this.readyState==4 && this.status==200) {
					document.getElementById("userLogin").innerHTML =this.responseText;
					
				}
			};
			xhttp.open('GET','user/',true);
			xhttp.send;
		}
	</script>
</body>
</html>
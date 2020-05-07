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
<body class="hold-transition skin-black sidebar-lg">
	<div id="txt"></div>
	<div class="wrapper">

		<header class="main-header" onload="">
			<!-- Logo -->

			<a href="#" class="logo"> <span class="logo-mini"><b>M</b></span>
				<!-- logo for regular state and mobile devices --> <span
				class="logo-lg"><b>MENU</b></span>
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
						<li class="dropdown user-menu "><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="${pageContext.request.contextPath}/assets/img/employer-login.jpg"
								class="user-image" alt="User Image">
						</a></li>
					</ul>
					<ul class="nav navbar-nav">
						<li class="dropdown"><a href="#" data-toggle="modal"
							data-target="#signOut" class="fa fa-sign-out"
							style="font-size: 20px; color: red">Sign Out</a></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<ul class="sidebar-menu">
					<li><a href="index.jsp"><i class="fa fa-home"
							style='font-size: 48px;'></i><span><h4>Home</h4></span></a></li>
					<li><a href="product"><i class="fa fa-folder"
							data-toggle="tooltip" title="Daftar Monitoring Product!"
							style='font-size: 48px; color: yellow'></i>
							<h4>Product</h4></a></li>
					<!-- <li><a href="biodata"><i class="fa fa-user"></i><span>Biodata</span></a></li>
					<li><a href="batch"><i class="fa fa-book"></i><span>Batch</span></a></li>
					<li><a href="clazz"><i class="fa fa-listfa "></i><span>Class</span></a></li> -->
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
	<!-- form sign out -->
	<form id="form-signOut">
		<div class="modal fade" id="signOut">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">Sign Out</h4>
						<div class="modal-body">
							<div class="row">
								<div class="col-xs-12">
									<h4>
										<center>
											<label>Sign out dari halaman ini!</label>
									</h4>
									</center>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default pull-left"
								data-dismiss="modal">Cancel</button>
							<button type="button" class="btn btn-primary" onclick="signOut()">Ok</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>



	<script>
		function signOut() {
			window.location.href = '${pageContext.request.contextPath}/logout';
		}
		$(document).ready(function() {
			$('[data-toggle="tooltip"]').tooltip();
		});
	</script>

</body>
</html>
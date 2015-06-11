<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		
		<title>Events</title>
		<meta name="description" content="description">
		<meta name="author" content="Vilar e Cephas">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="${request.contextPath}/plugins/bootstrap/bootstrap.css" rel="stylesheet">
		<link href="${request.contextPath}/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
		<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
		<link href='http://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
		<link href="${request.contextPath}/plugins/fancybox/jquery.fancybox.css" rel="stylesheet">
		<link href="${request.contextPath}/plugins/fullcalendar/fullcalendar.css" rel="stylesheet">
		<link href="${request.contextPath}/plugins/xcharts/xcharts.min.css" rel="stylesheet">
		<link href="${request.contextPath}/plugins/select2/select2.css" rel="stylesheet">
		<link href="${request.contextPath}/css/style.css" rel="stylesheet">
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
				<script src="http://getbootstrap.com/docs-assets/js/html5shiv.js"></script>
				<script src="http://getbootstrap.com/docs-assets/js/respond.min.js"></script>
		<![endif]-->
	</head>
<body>

<!--Start Header-->

<div id="screensaver">
	<canvas id="canvas"></canvas>
	<i class="fa fa-lock" id="screen_unlock"></i>
</div>

<div id="modalbox">
	<div class="devoops-modal">
		<div class="devoops-modal-header">
			<div class="modal-header-name">
				<span>Basic table</span>
			</div>
			<div class="box-icons">
				<a class="close-link">
					<i class="fa fa-times"></i>
				</a>
			</div>
		</div>
		<div class="devoops-modal-inner">
		</div>
		<div class="devoops-modal-bottom">
		</div>
	</div>
</div>
<header class="navbar">
	<div class="container-fluid expanded-panel">
		<div class="row">
			<div id="logo" class="col-xs-12 col-sm-2">
				
				<a href="${request.contextPath}/">Events</a>
			</div>
			<div id="top-panel" class="col-xs-12 col-sm-10">
				<div class="row">
					<div class="col-xs-8 col-sm-4">
						<a href="#" class="show-sidebar">
						  <i class="fa fa-bars"></i>
						</a>
						<div id="search">
							<input type="text" placeholder="Procure evento"/>
							<i class="fa fa-search"></i>
						</div>
					</div>
					<div class="col-xs-4 col-sm-8 top-panel-right">
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
<!--End Header-->

<!--Start Container-->

<!-- MAIN MENU -->

<div id="main" class="container-fluid">
	<div class="row">
		<div id="sidebar-left" class="col-xs-2 col-sm-2">
			<ul class="nav main-menu">
				
				<!-- HOME -->
				<li>
					<a href="${request.contextPath}/admin" class="active">
						<i class="fa fa-home"></i>
						<span class="hidden-xs">Home</span>
					</a>
				</li>
				
				<!-- USUARIOS -->
				<li>
					<a href="${request.contextPath}/Usuario" class="active">
						<i class="fa fa-male"></i>
						<span class="hidden-xs">Usuários</span>
					</a>
				</li>
				
				<!-- EVENTOS -->
				<li>
					<a href="${request.contextPath}/Evento" class="active">
						<i class="fa fa-calendar"></i>
						 <span class="hidden-xs">Eventos</span>
					</a>
				</li>

				<!-- CONVITES -->
				<li>
					<a href="${request.contextPath}/Convite" class="active">
						<i class="fa fa-file-text-o"></i>
						 <span class="hidden-xs">Convites</span>
					</a>
				</li>

				<!-- LOCALIDADES -->
				<li class="dropdown">
					<a href="#" class="dropdown-toggle">
						<i class="fa fa-globe"></i>
						<span class="hidden-xs">Localidades</span>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a class="active" href="${request.contextPath}/Pais">
								<i class="fa fa-map-marker"></i>
								<spam class="hidden-xs"> Pais</spam>
							</a>
						</li>
						<li>
							<a class="active" href="${request.contextPath}/Estado">
								<i class="fa fa-map-marker"></i>
								<spam class="hidden-xs"> Estado</spam>
							</a>
						</li>
						<li>
							<a class="active" href="${request.contextPath}/Cidade">
								<i class="fa fa-map-marker"></i>
								<spam class="hidden-xs"> Cidade</spam>
							</a>
						</li>
						<li>
							<a class="active" href="${request.contextPath}/Bairro">
								<i class="fa fa-map-marker"></i>
								<spam class="hidden-xs"> Bairro</spam>
							</a>
						</li>
					</ul>
				</li>
				
				<!-- TEMAS -->
				<li>
					<a href="${request.contextPath}/Tema" class="active">
						<i class="fa fa-book"></i>
						 <span class="hidden-xs">Temas</span>
					</a>
				</li>
		
				
			</ul>
		</div>
		<!--Start Content-->
		<div id="content" class="col-xs-12 col-sm-10">
			
			<!-- <div class="preloader">
				<img src="img/devoops_getdata.gif" class="devoops-getdata" alt="preloader"/>
			</div>
			<div id="ajax-content"></div> -->
			
			<g:layoutBody/>
		</div>
		<!--End Content-->
	</div>
</div>
<!--End Container-->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!--<script src="http://code.jquery.com/jquery.js"></script>-->
<script src="plugins/jquery/jquery-2.1.0.min.js"></script>
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="plugins/bootstrap/bootstrap.min.js"></script>
<script src="plugins/justified-gallery/jquery.justifiedgallery.min.js"></script>
<script src="plugins/tinymce/tinymce.min.js"></script>
<script src="plugins/tinymce/jquery.tinymce.min.js"></script>
<!-- All functions for this theme + document.ready processing -->
<script src="js/devoops.js"></script>
</body>
</html>

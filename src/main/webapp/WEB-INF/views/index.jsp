<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">

<title>FER Webshop</title>

<link rel="stylesheet" type="text/css" href="resources/app/css/app.css" />

<link rel="stylesheet" type="text/css" href="resources/lib/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="resources/lib/bootstrap-material/css/bootstrap-material-design.min.css">
<link rel="stylesheet" type="text/css" href="resources/lib/bootstrap-material/css/ripples.min.css">

<link href="resources/lib/bootstrap-material/css/material-fonts.css" rel="stylesheet" type="text/css">
<link href="resources/lib/bootstrap-material/css/material-icons.css" rel="stylesheet" type="text/css">

</head>

<body>
	
<header class="navbar navbar-fixed-top">
	<div class="container">
		<div class="row">
			<div class="col-xs-4">
				<h3 id="navbar-title" align="left">
					<a class="navbar-title-link" href="/webshop">FER Webshop</a>
				</h3>
			</div>
			<div class="col-xs-8"> 
				<h5 align="right">
					<a class="navbar-title-link" href="signin">Log In | Sign Up </a>
					<img src="resources/app/img/cart.png">
				</h5> 
			</div>
		</div> 
	</div> 
</header> 

<div id="main-container" class="container container-navbar-offset">
	
	<br>

		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="resources/app/img/img01.jpg" alt="...">
					<div class="carousel-caption">Dell laptop</div>
				</div>
				<div class="item">
					<img src="resources/app/img/img02.jpg" alt="...">
					<div class="carousel-caption">ASUS monitor</div>
				</div>
				<div class="item">
					<img src="resources/app/img/img03.jpg" alt="...">
					<div class="carousel-caption">MSI motherboard</div>
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>

		<div class="row row-offset">
		<p align="center"><strong>- Products -</strong></p>
	</div>

	<div class="row row-offset">
		<div class="col-xs-4 col-sm-3 colored-div">
			<ul class="list-unstyled product-list">
				<li><a href="products">Computer Cases</a></li>
				<li><a href="products">CPUs / Processors</a></li>
				<li><a href="products">Fans, Heatsinks, Cooling</a></li>
				<li><a href="products">GPUs/Video Graphic Cards</a></li>
			</ul>
		</div>

		<div class="col-xs-4 col-sm-6 colored-div">
			<ul class="list-unstyled product-list">
				<li><a href="products">Motherboards</a></li>
				<li><a href="products">Hard Drives, Storage</a></li>
				<li><a href="products">Hard Drive Enclosures</a></li>
				<li><a href="products">Interface / Add-On Cards</a></li>
			</ul>
		</div>

		<div class="col-xs-4 col-sm-3 colored-div">
			<ul class="list-unstyled product-list">
				<li><a href="products">Memory (RAM)</a></li>
				<li><a href="products">Optical Drives</a></li> 
				<li><a href="products">Power Supplies</a></li>
				<li><a href="products">Racks/Accessories</a></li>
			</ul>
		</div>
	</div>
</div>

<footer class="navbar navbar-fixed-bottom">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<h4 align="center">FER, 2017</h4>
			</div>
		</div>
	</div>
</footer>

<script src="resources/lib/bootstrap/js/jquery.min.js"></script>
<script src="resources/lib/bootstrap/js/bootstrap.min.js"></script>
<!-- <script src="resources/lib/bootstrap/js/carousel.js"></script> -->

<!-- <script src="resources/app/js/app.js"></script> -->
		
</body>
</html>

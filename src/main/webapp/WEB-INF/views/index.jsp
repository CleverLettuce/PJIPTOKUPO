<!DOCTYPE html>
<html>
	<jsp:include page="head.jsp" />
<body>
	<jsp:include page="header.jsp" />
	
	<div id="main-container" class="container container-navbar-offset">
		<br>
		<div class="row hidden-xs">
			<div class="carousel-wrapper">
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="resources/app/img/img01.jpg" alt="Pic 01">
							<div class="carousel-caption">Pic 01</div>
						</div>
						<div class="item">
							<img src="resources/app/img/img02.jpg" alt="...">
							<div class="carousel-caption">Pic 02</div>
						</div>
						<div class="item">
							<img src="resources/app/img/img03.jpg" alt="...">
							<div class="carousel-caption">Pic 03</div>
						</div>
					</div>

					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">Next</span>
					</a>
				</div>
			</div>
		</div>
		
		<br>

		<div class="row row-offset">
			<p align="center">
				<strong>- Products -</strong>
			</p>
		</div>

		<div class="row row-offset">
			<div class="col-xs-4 col-sm-4 colored-div">
				<ul class="list-unstyled product-list">
					<li><a href="product">Computer Cases</a></li>
					<li><a href="product">CPUs / Processors</a></li>
					<li><a href="product">Fans, Heatsinks, Cooling</a></li>
					<li><a href="product">GPUs/Video Graphic Cards</a></li>
				</ul>
			</div>

			<div class="col-xs-4 col-sm-4 colored-div">
				<ul class="list-unstyled product-list">
					<li><a href="product">Motherboards</a></li>
					<li><a href="product">Hard Drives, Storage</a></li>
					<li><a href="product">Hard Drive Enclosures</a></li>
					<li><a href="product">Interface / Add-On Cards</a></li>
				</ul>
			</div>

			<div class="col-xs-4 col-sm-4 colored-div">
				<ul class="list-unstyled product-list">
					<li><a href="product">Optical Drives</a></li>
					<li><a href="product">Memory (RAM)</a></li>
					<li><a href="product">Power Supplies</a></li>
					<li><a href="product">Racks/Accessories</a></li>
				</ul>
			</div>
		</div>
	</div>

	<br>
	<jsp:include page="footer.jsp" />
	<jsp:include page="scripts.jsp" />
</body>
</html>

<!DOCTYPE html>
<html>
<jsp:include page="head.jsp" />
<body>
	<jsp:include page="header.jsp" />

	<div id="main-container" class="container container-navbar-offset">
		<div class="row">
			<div class="col-xs-4 col-sm-3">

				<jsp:include page="sidenav.jsp" />

			</div>
			<div class="col-xs-8 col-sm-9">
			
				<div class="row content">
					<div class="hidden-xs col-sm-7 col-md-6 col-lg-5">
						<img src="resources/app/img/pic300250.png" alt="Product" />
					</div>
					<div class="col-xs-12 col-sm-5 col-md-6 col-lg-7">
						<h1>Product 01 name</h1>
						<p>Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh
							euismod tincidunt</p>
						<br>
						<div>
							<p>
								<strong>Price: 21.000 $ </strong>
							</p>
							<p>
								<strong>Status:</strong> <span class="text-success">Available</span>
							</p>
						</div>
						<br>
						<div>
							<a class="btn btn-success" href="cart">BUY</a> 
							<a class="btn btn-info" href="productinfo">INFO</a>
						</div>
					</div>
				</div>
					<div class="row content">
					<div class="hidden-xs col-sm-7 col-md-6 col-lg-5">
						<img src="resources/app/img/pic300250.png" alt="Product" />
					</div>
					<div class="col-xs-12 col-sm-5 col-md-6 col-lg-7">
						<h1>Product 02 name</h1>
						<p>Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh
							euismod tincidunt</p>
						<br>
						<div>
							<p>
								<strong>Price: 21.000 $ </strong>
							</p>
							<p>
								<strong>Status:</strong> <span class="text-success">Available</span>
							</p>
						</div>
						<br>
						<div>
							<a class="btn btn-success" href="cart">BUY</a> 
							<a class="btn btn-info" href="productinfo">INFO</a>
						</div>
					</div>
				</div>
					<div class="row content">
					<div class="hidden-xs col-sm-7 col-md-6 col-lg-5">
						<img src="resources/app/img/pic300250.png" alt="Product" />
					</div>
					<div class="col-xs-12 col-sm-5 col-md-6 col-lg-7">
						<h1>Product 03 name</h1>
						<p>Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh
							euismod tincidunt</p>
						<br>
						<div>
							<p>
								<strong>Price: 21.000 $ </strong>
							</p>
							<p>
								<strong>Status: <span class="text-success">Available</span></strong>
							</p>
						</div>
						<br>
						<div>
							<a class="btn btn-success" href="cart">BUY</a> 
							<a class="btn btn-info" href="productinfo">INFO</a>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>

	<br>
	<jsp:include page="footer.jsp" />
	<jsp:include page="scripts.jsp" />
</body>
</html>

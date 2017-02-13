<jsp:include page="head.jsp" />

<body>

	<jsp:include page="header.jsp" />

	<div class="container container-navbar-offset">

		<div class="row">
			<div class="col-xs-4 col-sm-3">

				<jsp:include page="sidenav.jsp" />

			</div>
			<div class="col-xs-8 col-sm-9">
				<div class="row content margin-right-5">
					<div class="hidden-xs col-sm-7 col-md-6 col-lg-5 padding-10">
						<img src="resources/app/img/pic300250.png" alt="Product" />
					</div>
					<div class="col-xs-12 col-sm-5 col-md-6 col-lg-7">
						<h1>Product name</h1>
						<p>Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh
							euismod tincidunt</p>
						<br> 
						<h2>Specification</h2>
						<p>Product specification... Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer commodo mattis
							nibh congue posuere. Aliquam ut eros varius, commodo enim et, accumsan nunc. Duis eu pulvinar ipsum, quis
							interdum urna. Nulla dictum augue id sapien aliquet mattis. Nam elit odio, molestie a egestas quis, auctor id
							volutpat.</p>
						<br>
						<div>
							<p>
								<strong>Price: <span>21.000$</span></strong> 
							</p>
							<p>
								<strong>Status: <span class="text-success">Available</span></strong>  
							</p>
						</div> 
						<br>
						<div>
							<a class="btn btn-success" href="cart">Add to cart</a>
						</div>
					</div>
				</div>
				<br> <br>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp" />
	<jsp:include page="scripts.jsp" />

</body>
</html>

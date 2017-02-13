<jsp:include page="head.jsp" />

<body>

	<jsp:include page="header.jsp" />

	<div class="container container-navbar-offset">

		<div class="row">
			<div class="col-xs-4 col-sm-3">

				<jsp:include page="sidenav.jsp" />

			</div>
			<div class="col-xs-8 col-sm-9">
				<div class="row content"> 
					<h1 class="text-primary">Current order</h1> 
					<br>
					<div class="table-responsive">
						<table id="cart" class="table table-striped table-bordered"> 
							<thead>
								<tr>
									<th>Image</th>
									<th>Article</th>
									<th>Quantity</th>
									<th>Refresh</th>
									<th>Delete</th>
									<th>Price</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>No image</td>
									<td>ASUS B150</td>
									<td>1</td>
									<td>img</td>
									<td>del</td>
									<td>$249.99</td>
								</tr>
								<tr>
									<td><strong>Total</strong></td>
									<td><strong>$249.99</strong></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<a class="btn btn-success" href="signin">CHECKOUT</a> 
					<a class="btn btn-danger" href="product">CANCEL</a>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp" />
	<jsp:include page="scripts.jsp" />

</body>
</html>

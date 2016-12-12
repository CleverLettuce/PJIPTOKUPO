<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="head.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="main-container" class="container container-navbar-offset">
		<div class="row">
			<div class="col-xs-4 col-sm-3">

				<jsp:include page="sidenav.jsp" />

			</div>
			<div class="col-xs-8 col-sm-9" style="padding-bottom: 50px">
				<div class="row my-thumbnail" style="padding-top: 20px">
					<div class="hidden-xs col-sm-7 col-md-6 col-lg-5">
						<img src="resources/app/img/pic300250.png" alt="Product" />
					</div>
					<div class="col-xs-12 col-sm-5 col-md-6 col-lg-7">
						<h3>Product 01 name</h3>
						<p>Product description...bla bla bla bla bla bla bla bla bla
							bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla</p>
						<div>
							<p>
								<strong>Specification</strong>
							</p>
							<p>Product description...bla bla bla bla bla bla bla bla bla
								bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla</p>
						</div>

						<br>
						<div>
							<p>
								<strong>Price:</strong> <span>21.000 $</span>
							</p>
							<p>
								<strong>Status</strong>: <span class="text-success">Available</span>
							</p>
						</div>
						<br> <br>
						<div>
							<a class="btn btn-success" href="cart">ADD TO CART</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<jsp:include page="scripts.jsp"></jsp:include>
</body>
</html>
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
				
				<div class="row my-thumbnail" style="padding: 20px">
				<p class=text-primary>Current order:</p>
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
							
								<td>No Image</td>
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
					<a class="btn btn-success" href="signin">CHECKOUT</a> <a class="btn btn-danger" href="products">CANCEL</a>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<jsp:include page="scripts.jsp"></jsp:include>
</body>
</html>
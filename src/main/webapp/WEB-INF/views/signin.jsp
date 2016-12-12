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
					<div class="col-xs-6">
						<p class="text-primary">Existing users</p>
						<hr>
						<p class="form-text">Username:</p>
						<input type="text" name="username" class="form-control">
						<p class="form-text">Password:</p>
						<input type="password" name="password" class="form-control">
						<a class="btn btn-success" href="products">Log In</a> <a
							class="btn btn-danger" href="products">Cancel</a>
					</div>
					<div class="col-xs-6">
						<h3 class="text-primary">New users:</h3>
						<hr>
						<p class="form-text">New here? You can sign up for an
							account below.<p>
						<a class="btn btn-success" href="userinfo">Sign up</a> <a
							class="btn btn-danger" href="products">Cancel</a>
					</div>
				</div>
			</div>
		</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
		<jsp:include page="scripts.jsp"></jsp:include>
</body>
</html>
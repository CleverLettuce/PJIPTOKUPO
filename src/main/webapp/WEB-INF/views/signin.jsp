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
					<div class="col-xs-6">
						<h1 class="text-primary">Existing users </h1>
						<hr>
						<p class="form-text">Username:</p>
						<input type="text" name="username" class="form-control">
						<p class="form-text">Password:</p>
						<input type="password" name="password" class="form-control"> <br> 
						<a class="btn btn-success" href="product">Log in</a>
						<a class="btn btn-danger" href="product">Cancel</a>
					</div>
					<div class="col-xs-6 login-content">
						<h1 class="text-primary">New users</h1>
						<hr>
						<p class="form-text">You are currently not registered. </p> 	
						<p class="form-text">Would you like to create an account?</p>
						<hr id="signup-hr"> 
						<a class="btn btn-success" href="userinfo">Sign Up</a> 
						<a class="btn btn-danger" href="product">Cancel</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp" />
	<jsp:include page="scripts.jsp" />
</body>
</html>

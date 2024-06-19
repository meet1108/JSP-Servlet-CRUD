<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<!-- Bootstrap  -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">



<!-- <link rel="stylesheet" type="text/css" href="/css/admin.css"> -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/virtual-select.min.css">



<!-- js  -->

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>


<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/multivalue.js"></script>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/virtual-select.min.js"></script>




<!-- jquery  -->








<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>


	<section class="vh-100 bg-image"
		style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
		<div class="mask d-flex align-items-center h-100 gradient-custom-3">
			<div class="container h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col-12 col-md-9 col-lg-7 col-xl-6">
						<div class="card" style="border-radius: 15px;">
							<div class="card-body p-5">
								<h2 class="text-uppercase text-center mb-5">Create an
									account</h2>

								<form name="login" action="login" method="post">



									<div class="form-outline mb-4">
										<input type="email" name="email" id="form3Example3cg"
											class="form-control form-control-lg" /> <label
											class="form-label" for="form3Example3cg">Your Email</label>
									</div>

									<div class="form-outline mb-4">
										<input type="password" name="password" id="form3Example4cg"
											class="form-control form-control-lg" /> <label
											class="form-label" for="form3Example4cg">Password</label>
									</div>



									<div class="form-check">
										<input class="form-check-input" type="checkbox"
											id="invalidCheck" name="condition"> <label
											class="form-check-label" for="invalidCheck"><h6>Agree
												to terms and conditions</h6> </label>
										<div class="invalid-feedback">You must agree before
											submitting.</div>
									</div>

									<div class="d-flex justify-content-center">
										<button type="submit" name="submit"
											class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Login</button>
									</div>

									<p class="text-center text-muted mt-5 mb-0">
										<a href="signup.jsp" class="fw-bold text-body"><u>Create new Account</u></a>
									</p>

								</form>

								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>
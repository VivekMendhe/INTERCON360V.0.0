<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/bootstrap.css">
<script type="text/javascript" src="./js/bootstrap.js"></script>
</head>

<body>

	<%@include file="navbar.jsp"%>

	<form id="sign-form" action="SignupServlet" method="post">
		<div class="container mt-5">
			<div class="row">
				<div class="col">
					<h3 class="text-warning">Create Info:</h3>
					<hr>
					<p class="container text-right text-warning">* Required
						Field(s)
					<p>
					<p class="text-warning">Your Information</p>

					<div class="container mt-3 text-left">



						<!-- row 2 -->
						<div class="row mt-2">
							<div class="col-md-2 text-right">
								<h6>* First Name:</h6>
							</div>
							<div class="col-md-4">
								<div class="input-group input-group-sm mb-3">
									<div class="input-group-prepend"></div>
									<input required="required" name="first_name" type="text"
										class="form-control" aria-label="Small"
										aria-describedby="inputGroup-sizing-sm">
								</div>
							</div>

							<div class="col-md-2 text-right">
								<h6>* Surname :</h6>
							</div>
							<div class="col-md-4">
								<div>
									<div class="input-group input-group-sm mb-3">
										<div class="input-group-prepend"></div>
										<input required="required" name="surname" type="text"
											class="form-control" aria-label="Small"
											aria-describedby="inputGroup-sizing-sm">
									</div>
								</div>
							</div>
						</div>
						<!-- End of row 2 -->

						<!-- row 4 -->
						<div class="row">
							<div class="col-md-2 text-right">
								<h6>* Email :</h6>
							</div>
							<div class="col-md-4">
								<!-- Expected Revenue Text Field -->
								<div class="input-group input-group-sm mb-3">
									<div class="input-group-prepend"></div>
									<input required="required" name="email" type="text"
										class="form-control" aria-label="Small"
										aria-describedby="inputGroup-sizing-sm">
								</div>
							</div>

							<div class="col-md-2 text-right">
								<h6>Date Of Birth :</h6>
							</div>
							<div class="col-md-4">
								<div>
									<!-- End Date -->
									<div class="input-group input-group-sm mb-3">
										<div class="input-group-prepend"></div>
										<input name="dob" type="date" class="form-control"
											aria-label="Small" aria-describedby="inputGroup-sizing-sm">
									</div>
								</div>
							</div>
						</div>
						<!-- End of row 4 -->

						<!-- row 5 -->
						<div class="row">
							<div class="col-md-2 text-right">
								<h6>* Password :</h6>
							</div>
							<div class="col-md-4">
								<!-- Expected Revenue Text Field -->
								<div class="input-group input-group-sm mb-3">
									<div class="input-group-prepend"></div>
									<input required="required" name="password" type="password"
										class="form-control" aria-label="Small"
										aria-describedby="inputGroup-sizing-sm">
								</div>
							</div>

							<div class="col-md-2 text-right">
								<h6>* Confirm Password :</h6>
							</div>
							<div class="col-md-4">
								<div>
									<!-- BudgetedCostTextField -->
									<div class="input-group input-group-sm mb-3">
										<div class="input-group-prepend"></div>
										<input required="required" name="cpassword" type="password"
											class="form-control" aria-label="Small"
											aria-describedby="inputGroup-sizing-sm">
									</div>
								</div>
							</div>
						</div>
						<!-- End of row 5 -->
					</div>
					<!-- End of Campaign Information -->
					<br>
					<!-- Description Information  -->
					<p class="text-warning">Gender</p>
					<!-- description row -->
					<div class="row">
						<div class="col-md-2 text-right">
							<h6>* Gender :</h6>
						</div>
						<div class="col-md-6">
							<!-- Expected Revenue Text Field -->
							<div class="mb-3">
								<input type="radio" id="male" name="gender" value="male">
								<label for="male">Male</label> <input type="radio" id="female"
									name="gender" value="female"> <label for="female">Female</label><br>
							</div>
						</div>

					</div>
					<!-- End of description -->
					<!-- End of Description Information  -->

					<!-- Buttons -->
					<div class="container text-center">
						<button id="submit-btn" type="submit" class="btn btn-primary">Sign
							Up</button>
						<button id="submit-btn" type="submit" class="btn btn-primary">Already
							Have Account</button>
						<button type="reset" class="btn btn-primary">Reset</button>
					</div>
					<!-- End of Buttons -->
				</div>
			</div>
		</div>
	</form>



	<!-- JavaScript file bootstrap -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
		integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+"
		crossorigin="anonymous"></script>
	 <script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>



	 	<script>
		$(document).ready(function () {
		    console.log('Loading')

		    $('#sign-form').on('submit', function (event) {
		        event.preventDefault();

		        let form = new FormData(this);

		        // send form data to promote form
		        $.ajax({
		            url: "PromoteServlet",
		            type: "POST",
		            data: form,
		            success: function (data,textStatus,jqXHR) {
		                console.log(data);
		                
		                	swal({
								title : "Good job!",
								text : "We are redirecting to login page!",
								icon : "warning",
								button : "Aww yiss!",																	
							})
							.then((value) => {
							  window.location="promote_details.jsp";
							});
		                
		                	
		            },
		            error: function (jqXHR, textStatus, errorThrown) {
		                console.log(jqXHR);
		                swal({
							title : "Bad Request",
							text : "Please fill all the requierd fields !",
							icon : "warning",
							button : "Aww noii!",																		
						})
						/* .then((value) => {
						  window.location="create_promote.jsp";
						}); */	
		            },
		            processData: false,
		            contentType: false
		        })
		    })
		})
		
		</script> 
</body>

</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Promotes</title>
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

	<form id="promote-form" action="PromoteServlet" method="post">
		<div class="container mt-5">
			<div class="row">
				<div class="col">
					<h3 class="text-warning">Create Promote:</h3>
					<hr class="warning">
					<p class="container text-right text-warning">* Required
						Field(s)
					<p>
					<div class="container text-center">

						<button type="submit" class="btn btn-primary">Save</button>

						<button type="submit" class="btn btn-primary">Save & New</button>

						<button type="reset" class="btn btn-primary">Cancel</button>

					</div>
					<p class="text-warning">Campaign Information</p>

					<div class="container mt-3 text-left">
						<div class="row">
							<div class="col-md-2 text-right">
								<h6>Campaign Owner:</h6>
							</div>
							<div class="col-md-4">
								<h6>rashmi</h6>
							</div>

							<div class="col-md-2 text-right">
								<h6>Type:</h6>
							</div>
							<div class="col-md-4">
								<!-- dropdown for type -->
								<div>
									<select class="custom-select custom-select-sm" id="type"
										name="type">
										<option value="">-None-</option>
										<option value="conference">Conference</option>
										<option value="webinar">Webinar</option>
										<option value="tradeshow">Trade Show</option>
										<option value="publicrelations">Public Relations</option>
										<option value="partners">Partners</option>
										<option value="referralprogram<">Referral Program</option>
										<option value="advertisement">Advertisement</option>
										<option value="bannerads">Banner Ads</option>
										<option value="directmail">Direct Mail</option>
										<option value="email">Email</option>
										<option value="telemarketing">Telemarketing</option>
										<option value="others">Others</option>
									</select>
								</div>
							</div>
						</div>
						<!-- End of row 1 -->

						<!-- row 2 -->
						<div class="row mt-2">
							<div class="col-md-2 text-right">
								<h6>* Campaign Name:</h6>
							</div>
							<div class="col-md-4">
								<div class="input-group input-group-sm mb-3">
									<div class="input-group-prepend"></div>
									<input required="required" name="campaign_name" type="text" class="form-control"
										aria-label="Small" aria-describedby="inputGroup-sizing-sm">
								</div>
							</div>

							<div class="col-md-2 text-right">
								<h6>Status:</h6>
							</div>
							<div class="col-md-4">
								<div>
									<!-- dropdown for status -->
									<select class="custom-select custom-select-sm" name="status"
										id="status">
										<option value="">-None-</option>
										<option value="planing">Planing</option>
										<option value="active">Active</option>
										<option value="inactive">Inactive</option>
										<option value="complete">Complete</option>
									</select>
								</div>
							</div>
						</div>
						<!-- End of row 2 -->


						<!-- row 3 -->
						<div class="row">
							<div class="col-md-2 text-right">
								<h6>Start Date:</h6>
							</div>
							<div class="col-md-4">
								<!-- Start Date -->
								<div class="input-group input-group-sm mb-3">
									<div class="input-group-prepend"></div>
									<input name="start_date" type="date" class="form-control"
										aria-label="Small" aria-describedby="inputGroup-sizing-sm">
								</div>
							</div>

							<div class="col-md-2 text-right">
								<h6>End Date:</h6>
							</div>
							<div class="col-md-4">
								<div>
									<!-- End Date -->
									<div class="input-group input-group-sm mb-3">
										<div class="input-group-prepend"></div>
										<input name="end_date" type="date" class="form-control"
											aria-label="Small" aria-describedby="inputGroup-sizing-sm">
									</div>
								</div>
							</div>
						</div>
						<!-- End of row 3 -->


						<!-- row 4 -->
						<div class="row">
							<div class="col-md-2 text-right">
								<h6>Expected Revenue:</h6>
							</div>
							<div class="col-md-4">
								<!-- Expected Revenue Text Field -->
								<div class="input-group input-group-sm mb-3">
									<div class="input-group-prepend"></div>
									<input name="expected_revenue" type="text" class="form-control"
										aria-label="Small" aria-describedby="inputGroup-sizing-sm">
								</div>
							</div>

							<div class="col-md-2 text-right">
								<h6>Budgeted Cost:</h6>

							</div>
							<div class="col-md-4">
								<div>
									<!-- BudgetedCostTextField -->
									<div class="input-group input-group-sm mb-3">
										<div class="input-group-prepend"></div>
										<input name="budgeted_cost" type="text" class="form-control"
											aria-label="Small" aria-describedby="inputGroup-sizing-sm">
									</div>
								</div>
							</div>
						</div>
						<!-- End of row 4 -->

						<!-- row 5 -->
						<div class="row">
							<div class="col-md-2 text-right">
								<h6>Actual Cost:</h6>
							</div>
							<div class="col-md-4">
								<!-- Expected Revenue Text Field -->
								<div class="input-group input-group-sm mb-3">
									<div class="input-group-prepend"></div>
									<input name="actual_cost" type="text" class="form-control"
										aria-label="Small" aria-describedby="inputGroup-sizing-sm">
								</div>
							</div>

							<div class="col-md-2 text-right">
								<h6>Expected Response:</h6>
							</div>
							<div class="col-md-4">
								<div>
									<!-- BudgetedCostTextField -->
									<div class="input-group input-group-sm mb-3">
										<div class="input-group-prepend"></div>
										<input name="expected_response" type="text"
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
					<p class="text-warning">Description Information</p>
					<!-- description row -->
					<div class="row">
						<div class="col-md-2 text-right">
							<h6>Description:</h6>
						</div>
						<div class="col-md-10">
							<!-- Expected Revenue Text Field -->
							<div class="input-group input-group-sm mb-3">
								<div class="input-group-prepend"></div>
								<textarea class="form-control" name="description"
									id="description" cols="30"></textarea>
							</div>
						</div>
					</div>
					<!-- End of description -->
					<!-- End of Description Information  -->

					<!-- Buttons -->
					<div class="container text-center">
						<!-- <a href="create_promote.jsp">
							<button type="button" class="btn btn-primary">Save</button>
						</a> <a href="create_promote.jsp">
							<button type="button" class="btn btn-primary">Save & New</button>
						</a> <a href="create_promote.jsp">
							<button type="button" class="btn btn-primary">Cancel</button>
						</a> -->

						<button id="submit-btn" type="submit" class="btn btn-primary">Save</button>

						<button id="submit-btn" type="submit" class="btn btn-primary">Save & New</button>

						<button type="reset" class="btn btn-primary">Cancel</button>

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
	
		<!-- <script>
		$(document).ready(function () {
		    console.log('Loading')

		    $('#promote-form').on('submit', function (event) {
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
		
		</script> -->
</body>

</html>
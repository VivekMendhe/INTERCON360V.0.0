<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page errorPage="error.jsp"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Create Contact</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<link rel="stylesheet" href="./css/style.css">
</head>

<body>
	<%@include file="navbar.jsp"%>

	<form id="" action="RecordServlet" method="post">
		<div class="container mt-5">
			<div class="row">
				<div class="col">
					<h3 class="text-warning">Create Records :</h3>
					<hr class="warning">
					<p class="container text-right text-warning">* Required
						Field(s)
					<p>
					<div class="container text-center">
						<button type="submit" class="btn btn-primary">Save</button>
						<button type="submit" class="btn btn-primary">Save & New</button>
						<!-- <button type="reset" class="btn btn-primary">Cancel</button> -->
						<button type="reset" class="btn btn-primary">Cancel</button>
					</div>
					<p class="text-warning">Contact Information</p>

					<div class="container mt-3 text-left">
						<!-- row 1 -->
						<div class="row">
							<div class="col-md-2 text-right">
								<h6>Convey Owner:</h6>
							</div>
							<div class="col-md-4">
								<h6>rashmi</h6>
							</div>

							<div class="col-md-2 text-right">
								<h6>Rating :</h6>
							</div>
							<div class="col-md-4">
								<!-- Drop down List -->
								<div>
									<select class="custom-select custom-select-sm mb-3"
										id="leadsource" name="rating">
										<option value="">-None-</option>
										<option value="Acquired">Acquired</option>
										<option value="Active">Active</option>
										<option value="Market Field">Market Field</option>
										<option value="Project Cancelled">Project Cancelled</option>
										<option value="Shutdown">Shutdown</option>
									</select>
								</div>
								<!-- End of Drop down List -->
							</div>
						</div>
						<!-- End of row 1 -->

						<!-- row 2 -->
						<div class="row">
							<div class="col-md-2 text-right">
								<h6>* Account Name :</h6>
							</div>
							<div class="col-md-4">
								<div class="input-group input-group-sm mb-3">
									<div class="input-group-prepend"></div>
									<input required="required" name="accountname" type="text"
										class="form-control" aria-label="Small"
										aria-describedby="inputGroup-sizing-sm">
								</div>
							</div>

							<div class="col-md-2 text-right">
								<h6>Phone :</h6>
							</div>
							<div class="col-md-4">
								<!-- Last Name Text field -->
								<div class="input-group input-group-sm mb-3">
									<div class="input-group-prepend"></div>
									<input name="phone" type="text" class="form-control"
										aria-label="Small" aria-describedby="inputGroup-sizing-sm">
								</div>
							</div>
						</div>
						<!-- End of row 2 -->

						<!-- row 2 -->
						<div class="row">
							<div class="col-md-2 text-right">
								<h6>Account Site :</h6>
							</div>
							<div class="col-md-4">
								<div class="input-group input-group-sm mb-3">
									<div class="input-group-prepend"></div>
									<input name="accountsite" type="text" class="form-control"
										aria-label="Small" aria-describedby="inputGroup-sizing-sm">
								</div>
							</div>

							<div class="col-md-2 text-right">
								<h6>FAX :</h6>
							</div>
							<div class="col-md-4">
								<!-- Last Name Text field -->
								<div class="input-group input-group-sm mb-3">
									<div class="input-group-prepend"></div>
									<input name="fax" type="text" class="form-control"
										aria-label="Small" aria-describedby="inputGroup-sizing-sm">
								</div>
							</div>
						</div>
						<!-- End of row 2 -->


						<!-- row 3 -->
						<div class="row">
							<div class="col-md-2 text-right">
								<h6>Parent Account :</h6>
							</div>
							<div class="col-md-3">
								<div class="input-group input-group-sm mb-3">
									<div class="input-group-prepend"></div>
									<input name="parentaccount" type="text" class="form-control"
										aria-label="Small" aria-describedby="inputGroup-sizing-sm">
								</div>
							</div>

							<div class="col-md-1">
								<div class="col-md-1">
									<div class="input-group input-group-sm mb-3">
										<div data-toggle="modal" data-target="#exampleModalCenter">
											<img style="cursor: pointer;" width="30vh" alt=""
												src="./images/target.png">
										</div>
									</div>
								</div>

								<!-- Modal -->
								<div class="modal fade bd-example-modal-lg"
									id="exampleModalCenter" tabindex="-1" role="dialog"
									aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
									<div class="modal-dialog modal-lg  modal-dialog-centered"
										role="document">
										<div class="modal-content">
											<div class="modal-header">
												<div class="row">
													<nav class="navbar navbar-light">
														<form action="" class="form-inline">
															<div class="col-md-8">
																<input class="form-control mr-sm-2" type="search"
																	placeholder="Search" aria-label="Search">
															</div>
															<div class="col-md-2">
																<button
																	class="btn btn-outline-primary mr-sm-2 my-2 my-sm-0"
																	type="submit">Search</button>
															</div>
														</form>
														<div class="col-md-2">
															<a href="create_promote.jsp">
																<button type="button" class="btn btn-outline-primary">New
																	Promote</button>
															</a>
														</div>
													</nav>
												</div>

												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">...</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-dismiss="modal">Close</button>
												<button type="button" class="btn btn-primary">Save
													changes</button>
											</div>
										</div>
									</div>
								</div>
								<!--End of Modal -->
							</div>

							<div class="col-md-2 text-right">
								<h6>Website :</h6>
							</div>
							<div class="col-md-4">
								<div class="input-group input-group-sm mb-3">
									<div class="input-group-prepend"></div>
									<input name="website" type="text" class="form-control"
										aria-label="Small" aria-describedby="inputGroup-sizing-sm">
								</div>
							</div>
						</div>
						<!-- End of row 3 -->

						<!-- row 4 -->
						<div class="row">
							<div class="col-md-2 text-right">
								<h6>Account Number :</h6>
							</div>
							<div class="col-md-4">
								<!-- Expected Revenue Text Field -->
								<div class="input-group input-group-sm mb-3">
									<div class="input-group-prepend"></div>
									<input name="account_number" type="email" class="form-control"
										aria-label="Small" aria-describedby="inputGroup-sizing-sm">
								</div>
							</div>

							<div class="col-md-2 text-right">
								<h6>Ticker Symbol :</h6>
							</div>
							<div class="col-md-4">
								<div>
									<!-- BudgetedCostTextField -->
									<div class="input-group input-group-sm mb-3">
										<div class="input-group-prepend"></div>
										<input name="ticker_symbol" type="text" class="form-control"
											aria-label="Small" aria-describedby="inputGroup-sizing-sm">
									</div>
								</div>
							</div>
						</div>
						<!-- End of row 4 -->

						<!-- row 5 -->
						<div class="row">
							<div class="col-md-2 text-right">
								<h6>Account Type :</h6>
							</div>
							<div class="col-md-4">
								<div>
									<select class="custom-select custom-select-sm"
										id="account_type" name="account_type">
										<option value="">-None-</option>
										<option value="Analyst">Analyst</option>
										<option value="Competitor">Competitor</option>
										<option value="Customer">Customer</option>
										<option value="Distributor">Distributor</option>
										<option value="Integrator">Integrator</option>
										<option value="Investor">Investor</option>
										<option value="Other">Other</option>
										<option value="Partner">Partner</option>
										<option value="Press">Press</option>
										<option value="Prospect">Prospect</option>
										<option value="Reseller">Reseller</option>
										<option value="Supplier">Supplier</option>
										<option value="Vendor">Vendor</option>
									</select>
								</div>
							</div>

							<div class="col-md-2 text-right">
								<h6>Ownership :</h6>
							</div>
							<div class="col-md-4">
								<div>
									<select class="custom-select custom-select-sm mb-3"
										id="ownership" name="ownership">
										<option value="">-None-</option>
										<option value="Other">Other</option>
										<option value="Private">Private</option>
										<option value="Public">Public</option>
										<option value="Subsidary">Subsidary</option>
									</select>
								</div>
							</div>
						</div>
						<!-- End of row 5 -->

						<!-- Row 6 -->
						<div class="row">
							<div class="col-md-2 text-right">
								<h6>Industry :</h6>
							</div>
							<div class="col-md-4">
								<div>
									<select class="custom-select custom-select-sm" id="industry"
										name="industry">
										<option value="">-None-</option>
										<option value="ASP">ASP</option>
										<option value="Data/Telecom OEm">Data/Telecom OEm</option>
										<option value="ERP">ERP</option>
										<option value="Government/Military">Government/Military</option>
										<option value="Large Enterprise">Large Enterprise</option>
										<option value="ManagementISV">ManagementISV</option>
										<option value="MSP(Management Service )">MSP(Management
											Service )</option>
										<option value="Network Equipment()">Network
											Equipment()</option>
										<option value="Non-management ISV">Non-management ISV</option>
										<option value="Optical Networking">Optical Networking</option>
										<option value="Service Provider">Service Provider</option>
										<option value="Small/Medium Enterprise">Small/Medium
											Enterprise</option>
										<option value="Storage Equipment">Storage Equipment</option>
										<option value="Storage Service Provider">Storage
											Service Provider</option>
										<option value="System Integration">System Integration</option>
										<option value="Wireless Industry">Wireless Industry</option>
									</select>
								</div>
							</div>

							<div class="col-md-2 text-right">
								<h6>Employees :</h6>
							</div>
							<div class="col-md-4">
								<div>
									<!-- BudgetedCostTextField -->
									<div class="input-group input-group-sm mb-3">
										<div class="input-group-prepend"></div>
										<input name="employees" type="text" class="form-control"
											aria-label="Small" aria-describedby="inputGroup-sizing-sm">
									</div>
								</div>
							</div>
						</div>
						<!-- End of Row 6 -->

						<!-- Row 7 -->
						<div class="row">
							<div class="col-md-2 text-right">
								<h6>Annual Revenue :</h6>
							</div>
							<div class="col-md-4">
								<!-- Expected Revenue Text Field -->
								<div class="input-group input-group-sm mb-3">
									<div class="input-group-prepend"></div>
									<input name="annual_revenue" type="text" class="form-control"
										aria-label="Small" aria-describedby="inputGroup-sizing-sm">
								</div>
							</div>

							<div class="col-md-2 text-right">
								<h6>SIC Code :</h6>
							</div>
							<div class="col-md-4">
								<div class="input-group input-group-sm mb-3">
									<div class="input-group-prepend"></div>
									<input name="sic_code" type="text" class="form-control"
										aria-label="Small" aria-describedby="inputGroup-sizing-sm">
								</div>
							</div>
						</div>
						<!-- End of Row 7 -->

					</div>
					<!-- End of Campaign Information -->

					<!-- Address Information  -->
					<div class="mt-5">
						<div class="row">
							<div class="col">
								<p class="text-warning">Address Information</p>
								<div class="container mt-3 text-left">
									<!-- Row 1 -->
									<div class="row mt-2">
										<div class="col-md-2 text-right">
											<h6>Billing Street :</h6>
										</div>
										<div class="col-md-4">
											<div class="input-group input-group-sm mb-3">
												<div class="input-group-prepend"></div>
												<input name="billing_street" type="text"
													class="form-control" aria-label="Small"
													aria-describedby="inputGroup-sizing-sm">
											</div>
										</div>

										<div class="col-md-2 text-right">
											<h6>Shipping Street :</h6>
										</div>
										<div class="col-md-4">
											<div class="input-group input-group-sm mb-3">
												<div class="input-group-prepend"></div>
												<input name="shipping_street" type="text"
													class="form-control" aria-label="Small"
													aria-describedby="inputGroup-sizing-sm">
											</div>
										</div>
									</div>
									<!-- End of Row 1 -->

									<!-- Row 2 -->
									<div class="row mt-2">
										<div class="col-md-2 text-right">
											<h6>Billing City :</h6>
										</div>
										<div class="col-md-4">
											<div class="input-group input-group-sm mb-3">
												<div class="input-group-prepend"></div>
												<input name="billing_city" type="text" class="form-control">
											</div>
										</div>

										<div class="col-md-2 text-right">
											<h6>Shipping City :</h6>
										</div>
										<div class="col-md-4">
											<div class="input-group input-group-sm mb-3">
												<div class="input-group-prepend"></div>
												<input name="shipping_city" type="text" class="form-control"
													aria-label="Small" aria-describedby="inputGroup-sizing-sm">
											</div>
										</div>
									</div>
									<!-- End of Row 2 -->

									<!-- Row 2 -->
									<div class="row mt-2">
										<div class="col-md-2 text-right">
											<h6>Billing State :</h6>
										</div>
										<div class="col-md-4">
											<div class="input-group input-group-sm mb-3">
												<div class="input-group-prepend"></div>
												<input name="billing_state" type="text" class="form-control"
													aria-label="Small" aria-describedby="inputGroup-sizing-sm">
											</div>
										</div>

										<div class="col-md-2 text-right">
											<h6>Shipping State :</h6>
										</div>
										<div class="col-md-4">
											<div class="input-group input-group-sm mb-3">
												<div class="input-group-prepend"></div>
												<input name="shipping_state" type="text"
													class="form-control" aria-label="Small"
													aria-describedby="inputGroup-sizing-sm">
											</div>
										</div>
									</div>
									<!-- End of Row 2 -->

									<!-- Row 4 -->
									<div class="row mt-2">
										<div class="col-md-2 text-right">
											<h6>Billing Code :</h6>
										</div>
										<div class="col-md-4">
											<div class="input-group input-group-sm mb-3">
												<div class="input-group-prepend"></div>
												<input name="billing_code" type="text" class="form-control"
													aria-label="Small" aria-describedby="inputGroup-sizing-sm">
											</div>
										</div>


										<div class="col-md-2 text-right">
											<h6>Shipping Code :</h6>
										</div>
										<div class="col-md-4">
											<div class="input-group input-group-sm mb-3">
												<div class="input-group-prepend"></div>
												<input name="shipping_code" type="text" class="form-control"
													aria-label="Small" aria-describedby="inputGroup-sizing-sm">
											</div>
										</div>
									</div>
									<!-- End of Row 4 -->

									<!-- Row 5 -->
									<div class="row mt-2">
										<div class="col-md-2 text-right">
											<h6>Billing Country :</h6>
										</div>
										<div class="col-md-4">
											<div class="input-group input-group-sm mb-3">
												<div class="input-group-prepend"></div>
												<input name="billing_country" type="text"
													class="form-control" aria-label="Small"
													aria-describedby="inputGroup-sizing-sm">
											</div>
										</div>

										<div class="col-md-2 text-right">
											<h6>Shipping Country :</h6>
										</div>
										<div class="col-md-4">
											<div class="input-group input-group-sm mb-3">
												<div class="input-group-prepend"></div>
												<input name="shipping_country" type="text"
													class="form-control" aria-label="Small"
													aria-describedby="inputGroup-sizing-sm">
											</div>
										</div>
									</div>
									<!-- End of Row 5 -->
								</div>
							</div>
						</div>
					</div>
					<!-- End of Address Information  -->

					<br>
					<!-- Description Information  -->
					<p class="container text-warning">Description Information</p>
					<!-- description row -->
					<div class="row">
						<div class="col-md-2 text-right">
							<h6>Description :</h6>
						</div>
						<div class="col-md-10">
							<!-- Expected Revenue Text Field -->
							<div class="input-group input-group-sm mb-3">
								<div class="input-group-prepend"></div>
								<textarea class="form-control" name="description"
									id="description" cols="50"></textarea>
							</div>
						</div>
					</div>
					<!-- End of description -->
					<!-- End of Description Information  -->

					<!-- Buttons -->
					<div class="container text-center mb-5">
						<button type="submit" class="btn btn-primary">Save</button>
						<button type="submit" class="btn btn-primary">Save & New</button>
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
	<!-- <script type="text/javascript" src="bootstrap.js"></script> -->
<!-- 	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
 -->
	<!-- <script>
		$(document).ready(function() {
			console.log("Loading")
			
			$('#convey-form').on('submit', function(event) {
				event.preventDefault();

				let form = new FormData(this);
				// send form data to promote form
				$.ajax({
					url : "ConveyServlet",
					type : "POST",
					data : form,
					success : function(data, textStatus, jqXHR) {
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
					error : function(jqXHR, textStatus, errorThrown) {
						console.log(jqXHR);
					},
					processData : false,
					contentType : false,
				})
			})
		})
	</script> -->
</body>

</html>
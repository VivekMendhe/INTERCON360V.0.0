<%@page import="com.intercon360.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>INTERCON360</title>

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
	<%-- <%Connection connection=ConnectionProvider.getConnection();
%><h1><%= connection %></h1> --%>

	<%@include file="navbar.jsp"%>

	<div class="container">
		<div class="row mt-5">
		<div class="col-md-3 offset-md-3"></div>
			<div class="col-md-3 offset-md-3">
				<div class="border border-warning rounded">
					<form action="LoginServlet" method="post" class="px-4 py-3">
						<div class="form-group">
							<label for="exampleDropdownFormEmail1">Email address</label> <input
								name="email" required="required" type="email" class="border border-warning form-control" id="exampleDropdownFormEmail1"
								placeholder="email@example.com">
						</div>
						<div class="form-group">
							<label for="exampleDropdownFormPassword1">Password</label> <input
								name="password" required="required" type="password" class="border border-warning form-control"
								id="exampleDropdownFormPassword1" placeholder="Password">
						</div>
						<div class="form-check mb-3">
							<input  type="checkbox" class="border-warning form-check-input"
							 name="check" id="dropdownCheck"> <label class="text-warning form-check-label"
								for="dropdownCheck"> Remember me </label>
						</div>
						<div class="container text-center">
							<button type="submit" class="btn btn-outline-warning">Sign in</button>
						</div>
					</form>
					<div class="dropdown-divider text-warning"></div>
					<div class="container text-center mb-3">
						<a class="dropdown-item text-primary" href="signup.jsp">New around here? Sign up</a> 
						<a class="dropdown-item text-primary" href="#">Forgot password?</a>
					</div>
				</div>
			</div>
		</div>

	</div>


	<!-- JavaScript file bootstrap -->
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
		integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+"
		crossorigin="anonymous"></script>
</body>
</html>
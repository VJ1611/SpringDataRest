<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Flights</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
</head>
<body>
	<h2>Find Flights:</h2>
	<div class="container">
		<form action="findFlights" method="post">
			<table class="table table-striped table-bordered">
				<tr>
					<th scope="col">From:</th>
					<td><input type="text" name="from" /></td>
				</tr>
				<tr>
					<th scope="col">To:</th>
					<td><input type="text" name="to" /></td>
				</tr>
				<tr>
					<th scope="col">Departure Date:</th>
					<td><input type="text" name="departureDate" /></td>
				</tr>
			</table>
			<table class="table">
				<tr>
					<td><button type="Submit" class="btn btn-success">Search</button></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
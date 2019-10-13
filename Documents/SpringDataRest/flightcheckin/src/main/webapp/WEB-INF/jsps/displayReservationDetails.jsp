<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reservation Details</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
</head>
<body>
	<h2>Flight Details:</h2>
	<div class="container">
		<table class="table table-striped table-bordered">
			<tr>
				<th scope="col">AIRLINES</th>
				<td>${reservation.flight.operatingAirlines}</td>
			</tr>
			<tr>
				<th scope="col">FLIGHT NO</th>
				<td>${reservation.flight.flightNumber}</td>
			</tr>
			<tr>
				<th scope="col">DEPARTURE CITY</th>
				<td>${reservation.flight.departureCity}</td>
			</tr>
			<tr>
				<th scope="col">ARRIVAL CITY</th>
				<td>${reservation.flight.arrivalCity}</td>
			</tr>
			<tr>
				<th scope="col">DATE OF DEPARTURE</th>
				<td>${reservation.flight.estimatedDepartureTime}</td>
			</tr>
			<tr>
				<th scope="col">ESTIMATED DEPARTURE TIME</th>
				<td>${reservation.flight.estimatedDepartureTime}</td>
			</tr>
		</table>
	</div>
	<h2>Passenger Details:</h2>
	<div class="container">
		<table class="table table-striped table-bordered">
			<tr>
				<th scope="col">FIRST NAME</th>
				<td>${reservation.passenger.firstName}</td>
			</tr>
			<tr>
				<th scope="col">MIDDLE NAME</th>
				<td>${reservation.passenger.middleName}</td>
			</tr>
			<tr>
				<th scope="col">LAST NAME</th>
				<td>${reservation.passenger.lastName}</td>
			</tr>
			<tr>
				<th scope="col">EMAIL</th>
				<td>${reservation.passenger.email}</td>
			</tr>
			<tr>
				<th scope="col">PHONE</th>
				<td>${reservation.passenger.phone}</td>
			</tr>
		</table>
	</div>
	<div class="container">
		<form action="completeCheckIn" method="post">
			<table class="table table-striped table-bordered">
				<tr>
					<th scope="col">Enter Number Of Bags You Want To CheckIn</th>
					<td><input type="text" name="numberOfBags" /></td>
				</tr>
			</table>
			<input type="hidden" value="${reservation.id}" name = "reservationId" />
			<table class="table">
				<tr>
					<td><button type="Submit" class="btn btn-success">CheckIn</button></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>

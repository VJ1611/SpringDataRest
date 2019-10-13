<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Complete Reservation</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
</head>
<body>
	<h2>Complete Reservation:</h2>
	<div class="container">
		<table class="table table-striped table-bordered">
			<tr>
				<th scope="col">AIRLINE</th>
				<td>${flight.operatingAirlines}</td>
			</tr>
			<tr>
				<th scope="col">DEPARTURE CITY</th>
				<td>${flight.departureCity}</td>
			</tr>
			<tr>
				<th scope="col">ARRIVAL CITY</th>
				<td>${flight.arrivalCity}</td>
			</tr>
		</table>
	</div>

	<form action="completeReservation" method="post">
		<h2>Passenger Details:</h2>
		<div class="container">
			<table class="table table-striped table-bordered">
				<tr>
					<th scope="col">First Name</th>
					<td><input type="text" name="passengerFirstName" /></td>
				</tr>
				<tr>
					<th scope="col">Middle Name</th>
					<td><input type="text" name="passengerMiddleName" /></td>
				</tr>
				<tr>
					<th scope="col">Last Name</th>
					<td><input type="text" name="passengerLastName" /></td>
				</tr>
				<tr>
					<th scope="col">Email</th>
					<td><input type="text" name="passengerEmail" /></td>
				</tr>
				<tr>
					<th scope="col">Phone</th>
					<td><input type="text" name="passengerPhone" /></td>
				</tr>

			</table>
		</div>
		<h2>Card Details:</h2>
		<div class="container">
			<table class="table table-striped table-bordered">
				<tr>
					<th scope="col">Name on the card</th>
					<td><input type="text" name="nameOnTheCard" /></td>
				</tr>
				<tr>
					<th scope="col">Card No</th>
					<td><input type="text" name="cardNumber" /></td>
				</tr>
				<tr>
					<th scope="col">Expiry Date</th>
					<td><input type="text" name="expirationDate" /></td>
				</tr>
				<tr>
					<th scope="col">CVV</th>
					<td><input type="text" name="securityCode" /></td>
				</tr>
			</table>
			
			<input type="hidden" name="flightId" value="${flight.id}" />

			<table class="table">
				<tr>
					<td><button type="Submit" class="btn btn-success">Confirm</button></td>
				</tr>
			</table>
		</div>
	</form>

</body>
</html>
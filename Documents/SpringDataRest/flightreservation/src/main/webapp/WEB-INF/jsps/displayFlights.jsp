<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Flights</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
</head>
<body>
	<h2>Flights:</h2>
	<div class="container">
		<table class="table table-striped table-bordered">
			<tr>
				<th scope="col">AIRLINES</th>
				<th scope="col">DEPARTURE CITY</th>
				<th scope="col">ARRIVAL CITY</th>
				<th scope="col">DEPARTURE TIME</th>
				<th scope="col">SELECT FLIGHT</th>
			</tr>

			<c:forEach items="${flights}" var="flight">
				<tr>
					<td>${flight.operatingAirlines}</td>
					<td>${flight.departureCity}</td>
					<td>${flight.arrivalCity}</td>
					<td>${flight.estimatedDepartureTime}</td>
					<td><a href="showCompleteReservation?flightId=${flight.id}" class="btn btn-info" role="button">Select</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
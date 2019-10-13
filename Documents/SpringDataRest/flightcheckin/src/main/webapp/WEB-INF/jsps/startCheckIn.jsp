<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Start Check In</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
</head>
<body>
	<h2>Start CheckIn:</h2>
	<div class="container">
		<form action="startCheckIn" method="post">
			<table class="table table-striped table-bordered">
				<tr>
					<th scope="col">Enter the Reservation Id:</th>
					<td><input type="text" name="reservationId" /></td>
				</tr>
			</table>
			
			<table class="table">
				<tr>
					<td><button type="Submit" class="btn btn-success">Start CheckIn</button></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
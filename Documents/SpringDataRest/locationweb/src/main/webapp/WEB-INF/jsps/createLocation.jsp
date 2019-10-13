<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Location</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
</head>
<body>
	<h2>Add a Location:</h2>
	<div class="container">
		<form action="saveLoc" method="post">
			<table class="table table-striped table-bordered">
				<tr>
					<th scope="col">ID:</th>
					<td><input type="text" name="id" /></td>
				</tr>
				<tr>
					<th scope="col">Code:</th>
					<td><input type="text" name="code" /></td>
				</tr>
				<tr>
					<th scope="col">Name:</th>
					<td><input type="text" name="name" /></td>
				</tr>
				<tr>
					<th scope="col">Type:</th>
					<td>Urban <input type="radio" name="type" value="URBAN" />
						Rural <input type="radio" name="type" value="RURAL" /></td>
				</tr>
			</table>

			<table class="table">
				<tr>
					<td><button type="Submit" class="btn btn-success">Save</button></td>
					<td><a href="displayLocations" class="btn btn-primary"
						role="button">View All</</a></td>
				</tr>
			</table>
		</form>
		${msg}
	</div>
</body>
</html>
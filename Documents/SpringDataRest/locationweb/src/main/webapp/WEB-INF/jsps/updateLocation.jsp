<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Location</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
</head>
<body>
	<h2>Update a Location:</h2>
	<div class="container">
		<form action="updateLoc" method="post">
			<table class="table table-striped table-bordered">
				<tr>
					<th scope="col">ID:</th>
					<td><input type="text" name="id" value="${location.id}"
						readonly /></td>
				</tr>
				<tr>
					<th scope="col">Code:</th>
					<td><input type="text" name="code" value="${location.code}" /></td>
				</tr>
				<tr>
					<th scope="col">Name:</th>
					<td><input type="text" name="name" value="${location.name}" /></td>
				</tr>
				<tr>
					<th scope="col">Type:</th>
					<td>Urban <input type="radio" name="type" value="URBAN"
						${location.type == 'URBAN'?'checked':''} /> Rural <input
						type="radio" name="type" value="RURAL"
						${location.type == 'RURAL'?'checked':''} /></td>
				</tr>
			</table>

			<table class="table">
				<tr>
					<td><button type="Submit" class="btn btn-success">Save</button></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>
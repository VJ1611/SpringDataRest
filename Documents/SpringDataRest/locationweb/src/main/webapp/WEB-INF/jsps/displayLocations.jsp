<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Locations</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
</head>
<body>

	<h2>Locations:</h2>
	<div class="container">
		<table class="table table-striped table-bordered">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">CODE</th>
				<th scope="col">NAME</th>
				<th scope="col">TYPE</th>
				<th scope="col">EDIT</th>
				<th scope="col">DELETE</th>
			</tr>

			<c:forEach items="${locations}" var="location">
				<tr>
					<td>${location.id}</td>
					<td>${location.code}</td>
					<td>${location.name}</td>
					<td>${location.type}</td>
					<td><a href="showUpdate?id=${location.id}"
						class="btn btn-warning" role="button">edit</a></td>
					<td><a href="deleteLocation?id=${location.id}"
						class="btn btn-danger" role="button">delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>

	<table class="table">
		<tr>
			<td><a href="showCreate" class="btn btn-info" role="button">Add
					Location</a></td>
		</tr>
	</table>


</body>
</html>
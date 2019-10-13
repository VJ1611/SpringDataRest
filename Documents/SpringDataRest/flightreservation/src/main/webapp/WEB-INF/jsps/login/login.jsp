<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
</head>
<body>
	<h2>User Login:</h2>
	<div class="container">
		<form action="login" method="post">
			<table class="table table-striped table-bordered">
				<tr>
					<th scope="col">User Name:</th>
					<td><input type="text" name="email" /></td>
				</tr>
				<tr>
					<th scope="col">Password:</th>
					<td><input type="password" name="password" /></td>
				</tr>
			</table>
			<table class="table">
				<tr>
					<td><button type="Submit" class="btn btn-success">Login</button></td>
				</tr>
			</table>
		</form>
		${msg}
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<html>
<head>
<title>Spittr</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/style.css" />">
<link rel="stylesheet"
	href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="webjars/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript"
	src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
	<h1>Register</h1>
	<sf:form method="POST" commandName="abc">
		<div class="alert alert-danger">
			<sf:errors path="*"></sf:errors>
		</div>
		<div class="form-group">
			<label for="firstName">First Name:</label>
			<sf:input path="firstName" class="form-control" />
			<sf:errors path="firstName" cssClass="text-error"></sf:errors>
		</div>
		<div class="form-group">
			<label for="lastName">Last Name:</label>
			<sf:input path="lastName" class="form-control" />
			<sf:errors path="lastName" cssClass="text-error"></sf:errors>
		</div>
		<div class="form-group">
			<label for="email">Email:</label>
			<sf:input path="email" class="form-control" />
			<sf:errors path="email" cssClass="text-error"></sf:errors>
		</div>
		<div class="form-group">
			<label for="username">User name:</label>
			<sf:input path="username" class="form-control" />
			<sf:errors path="username" cssClass="text-error"></sf:errors>
		</div>
		<div class="form-group">
			<label for="password"> Password:</label>
			<sf:password path="password" class="form-control"
				placeholder="Enter password" />
			<sf:errors path="password" cssClass="text-error"></sf:errors>
		</div>
		<input type="submit" class="btn btn-default" value="Register" />
	</sf:form>

	<div class="btn-group">
		<button type="button" class="btn btn-success">This is a
			success button</button>
		<button type="button" class="btn btn-warning">This is a
			warning button</button>
		<button type="button" class="btn btn-danger">This is a danger
			button</button>
	</div>
</body>
</html>
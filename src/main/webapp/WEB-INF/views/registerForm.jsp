<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Spittr</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/style.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/main.css" />">
	
<link rel="stylesheet"
	href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="webjars/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript"
	src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<h1>Register</h1>
	<c:url value="/css/style.css" var="cssUrl" />
	<c:out value="${cssUrl}" />
	<form method="POST">
		First Name: <input type="text" name="firstName" /><br /> Last Name:
		<input type="text" name="lastName" /><br /> Username: <input
			type="text" name="username" /><br /> Password: <input
			type="password" name="password" /><br /> <input type="submit"
			class="btn btn-success" value="Register" />
	</form>
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
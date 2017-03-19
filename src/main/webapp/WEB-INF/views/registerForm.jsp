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
	First Name: <sf:input path="firstName" />
		<sf:errors path="firstName" cssClass="text-error"></sf:errors>
		<br />
		 Last Name: <sf:input path="lastName" />
		<sf:errors path="lastName" cssClass="text-error"></sf:errors>

		<br /> 
		Email: <sf:input path="email" type="email" />

		<br />
		 User name: <sf:input path="username" />
		<sf:errors path="username" cssClass="text-error"></sf:errors>

		<br />
		  Password:<sf:password path="password" />
		<sf:errors path="password" cssClass="text-error"></sf:errors>

		<br />
		<input type="submit" value="Register" />
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
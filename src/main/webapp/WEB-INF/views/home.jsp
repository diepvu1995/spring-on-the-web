<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spittr</title>
<link rel="stylesheet" type="text/css" href="<c:url value="style.css"/>" />

<link rel="stylesheet"
	href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="webjars/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript"
	src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<h1>Welcome to Spittr</h1>

	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Spittr SpringMVC App</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="<c:url value="/spittles?max=238900&count=30" />">Spittles</a></li>
				<li><a href="<c:url value="/spittles/1" />">Spittles1</a></li>
				<li><a href="<c:url value="/spitter/register" />">Register</a></li>
			</ul>
		</div>
	</nav>

	<div class="container">
		<div class="starter-template">
			<h1>Spring Boot Web Thymeleaf Example</h1>
			<h2>
				<span th:text="'Message: ' + ${message}"></span>
			</h2>
		</div>

	</div>
</body>
</html>
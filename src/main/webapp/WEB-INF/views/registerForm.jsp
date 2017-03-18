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
			value="Register" />
	</form>
</body>
</html>
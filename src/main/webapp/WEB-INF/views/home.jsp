<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spittr</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/style.css" />">
</head>
<body>
	<h1>Welcome to Spittr</h1>
	<a href="<c:url value="/spittles?max=238900&count=30" />">Spittles</a>|
	<a href="<c:url value="/spittles/1" />">Spittles1</a>|
	<a href="<c:url value="/spitter/register" />">Register</a>
</body>
</html>
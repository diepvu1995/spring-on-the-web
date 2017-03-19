<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<html>
<head>
<title>Spittr</title>
<link rel="stylesheet" type="text/css" href="../css/style.css" />
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
	<h1>Exit</h1>
	<sf:form method="POST" commandName="exitSpittle">
		<sf:errors path="*"></sf:errors>
		Message: <sf:input path="message" value="${exitSpittle.message}" />
		<br />
Time: <sf:input path="time" value="${exitSpittle.time}" />
		<br />
Latitude: <sf:input path="latitude" value="${exitSpittle.latitude}" />
		<br />
Longitude: <sf:input path="longitude" value="${exitSpittle.longitude}" />
		<br />
		<input type="submit" class="btn btn-success" value="SAVE" />


	</sf:form>

</body>
</html>
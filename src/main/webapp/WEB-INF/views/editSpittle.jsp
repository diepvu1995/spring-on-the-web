<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
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
	<c:url value="/spitter/register" var="registerUrl" />
	<a href="${registerUrl}">Register</a>
	<s:url value="/spitter/register" var="registerUrl" scope="request"></s:url>
	<a href="${registerUrl}">Register</a>

</body>
</html>
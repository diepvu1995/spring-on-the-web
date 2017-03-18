<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<html>
<head>
<title>Spittr</title>
<%-- <link rel="stylesheet" type="text/css"
	href="<c:url value="/WEB-INF/css/style.css" />"> --%>
<link rel="stylesheet" type="text/css" href="../css/style.css" />
</head>

<body>
	<h1>Register</h1>
	<sf:form method="POST" commandName="abc">
		<sf:errors path="*"></sf:errors>
	
	First Name: <sf:input path="firstName" />
		<sf:errors path="firstName" cssClass="error"></sf:errors>
		<br />
		 Last Name: <sf:input path="lastName" />
		<sf:errors path="lastName"></sf:errors>

		<br /> 
		Email: <sf:input path="email" type="email" />

		<br />
		 User name: <sf:input path="username" />
		<sf:errors path="username"></sf:errors>

		<br />
		  Password:<sf:password path="password" />
		<sf:errors path="password"></sf:errors>

		<br />
		<input type="submit" value="Register" />
	</sf:form>
</body>
</html>
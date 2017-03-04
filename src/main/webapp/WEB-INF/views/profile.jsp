<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Your Profile</h1>
	<c:out value="${spitter.username}" />
	<br />
	<c:out value="${spitter.firstName}" />
	<c:out value="${spitter.lastName}" />
</body>
</html>
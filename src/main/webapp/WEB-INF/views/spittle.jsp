<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:out value="${error}"></c:out>
	<div class="spittleView">
		<div class="spittleMessage">
			<c:out value="${spittle.message}" />
		</div>
		<div>
			<span class="spittleTime"><c:out value="${spittle.time}" /></span>
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Welcome Spittles</title>
</head>
<body>
	<h1>Recent Spittles</h1>
	<c:forEach items="${spittleList}" var="spittle">
		<li id="spittle_<c:out value="spittle.id"/>">
			<div class="spittleMessage">
				<c:out value="${spittle.message}" />
			</div>
			<div>
				<span class="spittleId"><c:out value="${spittle.id}" /></span> <span
					class="spittleTime"><c:out value="${spittle.time}" /></span> <span
					class="spittleLocation"> (<c:out value="${spittle.latitude}" />,
					<c:out value="${spittle.longitude}" />)
				</span>
			</div> <a href="/spittles/delete/${spittle.id }">delete</a> <a
			href="/spittles/edit/${spittle.id}">Edit</a>
		</li>
	</c:forEach>
</body>
</html>
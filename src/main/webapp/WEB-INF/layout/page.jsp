<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div id="header">
		<t:insertAttribute name="header"></t:insertAttribute>
	</div>
	<div id="content">
		<t:insertAttribute name="body"></t:insertAttribute>
	</div>
	<div id="footer">
		<t:insertAttribute name="footer"></t:insertAttribute>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="webjars/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">
<script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>

<link href="https://cdn.datatables.net/buttons/1.0.1/css/buttons.dataTables.css" rel="stylesheet" type="text/css" />
<script src="https://cdn.datatables.net/buttons/1.0.3/js/buttons.html5.min.js"></script>

<title>Welcome Spittles</title>
<script type="text/javascript">
	$(document).ready(function() {
		var table = $('#employeesTable').DataTable({
			"sAjaxSource" : "/getAllSpittles",
			"sAjaxDataProp" : "",
			"order" : [ [ 0, "asc" ] ],
			"aoColumns" : [ 
			              { "mData" : "id"},
			              { "mData" : "message"},
			              { "mData" : "time"}],
			scrollY : "600px",
			scrollCollapse: true,
			dom: 'Blfrtip',
			buttons: ['copy', 'csv', 'excel'],
		    colReorder: true,
		    select: true
		})
	});
	
</script>
</head>

<body>
	<!-- datatable start  -->
	<h1>Employees Table</h1>
	<table id="employeesTable" class="display">

		<!-- Header Table -->
		<thead>
			<tr>
				<th>Id</th>
				<th>Message</th>
				<th>Time</th>
			</tr>
		</thead>
		<!-- Footer Table -->
		<tfoot>
			<tr>
				<th>Id</th>
				<th>Message</th>
				<th>Time</th>
			</tr>
		</tfoot>
	</table>

	<!-- datatable end -->

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
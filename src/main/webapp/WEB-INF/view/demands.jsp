<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<spring:url value="/resources/css/style.css" var="stylecss" />
<meta charset="utf-8">
<title>Demands For Blood Donations</title>
<meta name="description" content="">
<link href="${stylecss}" rel="stylesheet" />
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" media="all" />

</head>
<body>
	<!-- Fixed navbar -->
	<nav class="navbar navbar-inverse navbar-static-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Life Savers</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="logout.html">Logout</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>
	<div class="container">
		<h2>The List of Demands</h2>
		<div class="table-responsive">
			<table class="table table-striped table-bordered">
				<thead class="">
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Date</th>
						<th>Username</th>
						<th>Confirmation Status</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${donations}" var="donation">
						<tr>
							<td><c:out value="${donation.donor.firstName}" /></td>
							<td><c:out value="${donation.donor.lastName}" /></td>
							<td><c:out value="${donation.date}" /></td>
							<td><c:out value="${donation.donor.username}" /></td>
							<td>
								<c:choose>
									<c:when test="${donation.confirmed}">CONFIRMED</c:when>
									<c:otherwise>PENDING</c:otherwise>
								</c:choose>
							</td>
							<td><a class="btn btn-danger"
								href="<c:url value='/demands/cancel/${donation.id}' />">Cancel</a>

							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

	</div>

	<script type="text/javascript"
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</body>
</html>
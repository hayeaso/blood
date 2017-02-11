<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="container">
	<div class="jumbotron">
	<h2>Welcome to the admin panel</h2>
	<div class="table-responsive">
		<table class="table table-condensed table-bordered table-hover">
			<thead class="">
				<tr>
					<th>#ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Registration Date</th>
					<th>Username</th>
					<th>Eligible</th>
					<th>Blood Group</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${donors}" var="donor">
					<tr>
						<td><c:out value="${donor.id}" /></td>
						<td><c:out value="${donor.firstName}" /></td>
						<td><c:out value="${donor.lastName}" /></td>
						<td><c:out value="${donor.registrationDate}" /></td>
						<td><c:out value="${donor.username}" /></td>
						<td><c:out value="${donor.eligible.eligible}" /></td>
						<td><c:out value="${donor.bloodGroup}" /></td>							
						<td>
						<a class="btn btn-danger btn-xs" href="<c:url value='/remove/${donor.id}' />"><span class="glyphicon glyphicon-trash"></span></a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</div>
</div>
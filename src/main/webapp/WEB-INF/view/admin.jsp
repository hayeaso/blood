<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="utf-8">
<title>Admin Dashboard</title>
</head>
<body>
	<h2>Welcome to the admin panel</h2>

	<table>

		<thead>
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
					
					<td><a href="<c:url value='/remove/${donor.id}' />">Delete
					</a></td>
				</tr>
			</c:forEach>
		</tbody>

	</table>

	<form:form action = "profile">
		<input type = "submit" value = "Profile" id = "profile" />
	</form:form>
</body>
</html>

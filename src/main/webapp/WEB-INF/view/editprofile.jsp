<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<jsp:useBean id="now" class="java.util.Date" scope="request" />
<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>

<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<h4 class="modal-title" id="myModalLabel">
				Register to <b>Lifesavers</b>
			</h4>
			or go back to our <a href="/">main site</a>.
		</div>

		<div class="modal-body">
			<div class="row">
				<div class="well">
					<form:form modelAttribute="donor" class="form-horizontal"
						action="../profile " method="POST">
						<p>
							<form:errors path="*" cssStyle="color : red;" />
						</p>
						<div class="form-group">
							<div class="col-lg-4">
								<label class="control-label" for="firstName">First Name
								</label>
							</div>
							<div class="col-lg-8">
								<form:input id="firstName" path="firstName"
									placeholder="Please enter First Name" type="text"
									class="form-control" value="" />
								<span class="help-block"> <form:errors path="firstName"
										cssStyle="color : red;" />
								</span>
							</div>
						</div>

						<div class="form-group">
							<div class="col-lg-4">
								<label class="control-label" for="lastName">Last Name</label>
							</div>
							<div class="col-lg-8">
								<form:input id="lastName" path="lastName"
									placeholder="Please enter Last Name" type="text"
									class="form-control" value="" />
								<span class="help-block"> <form:errors path="lastName"
										cssStyle="color : red;" />
								</span>
							</div>
						</div>

						<div class="form-group">
							<div class="col-lg-4">
								<label class="control-label" for="Blood Group">Blood
									Group</label>
							</div>
							<div class="col-lg-8">
								<form:select path="bloodGroup" class="form-control">
									<form:option value="" label="Select Blood Type" />
									<form:options path="${availableOptions}" />
								</form:select>
								<span class="help-block"> <form:errors path="bloodGroup"
										cssStyle="color : red;" />
								</span>
							</div>
						</div>

						<div class="form-group">
							<div class="col-lg-4">
								<label class="control-label" for="username">Username</label>
							</div>
							<div class="col-lg-8">
								<form:input id="username" path="username"
									placeholder="Please enter UserName" type="text"
									class="form-control" value="" />
								<span class="help-block"> <form:errors path="username"
										cssStyle="color : red;" />
								</span>
							</div>
						</div>

						<div class="form-group">
							<div class="col-lg-4">
								<label class="control-label" for="email">Email</label>
							</div>
							<div class="col-lg-8">
								<form:input id="email" path="email"
									placeholder="Please enter Email" type="text"
									class="form-control" value="" />
								<span class="help-block"> <form:errors path="email"
										cssStyle="color : red;" />
								</span>
							</div>
						</div>
						<h2>Address</h2>
						<div class="form-group">
							<div class="col-lg-4">
								<label class="control-label" for="street">Street</label>
							</div>
							<div class="col-lg-8">
								<form:input id="street" path="address.street"
									placeholder="Please enter Street" type="text"
									class="form-control" value="" />
								<span class="help-block"> <form:errors
										path="address.street" cssStyle="color : red;" />
								</span>
							</div>
						</div>

						<div class="form-group">
							<div class="col-lg-4">
								<label class="control-label" for="city">City</label>
							</div>
							<div class="col-lg-8">
								<form:input id="city" path="address.city"
									placeholder="Please enter City" type="text"
									class="form-control" value="" />
								<span class="help-block"> <form:errors
										path="address.city" cssStyle="color : red;" />
								</span>
							</div>
						</div>

						<div class="form-group">
							<div class="col-lg-4">
								<label class="control-label" for="state">State</label>
							</div>
							<div class="col-lg-8">
								<form:input id="state" path="address.state"
									placeholder="Please enter State" type="text"
									class="form-control" value="" />
								<span class="help-block"> <form:errors
										path="address.state" cssStyle="color : red;" />
								</span>
							</div>
						</div>
						<div class="form-group">
							<div class="col-lg-4"></div>
							<div class="col-lg-8">
								<input type="submit" id="btnAdd" class="btn btn-info btn-block"
									value="Register"> <span class="help-block"></span>
							</div>
						</div>
						<div>
							<form:input id="eligible" path="eligible.eligible" type="hidden"
								value="1" />
						</div>
						<div class="col-lg-8">
							<form:input id="password" path="password"
								placeholder="Please enter Password" type="hidden"
								class="form-control" value="" />
							<span class="help-block"></span>
						</div>
						<div>
							<form:input id="id" path="id" type="hidden" value="${id}" />

						</div>
						<div class="col-lg-8">
							<form:input id="registrationDate" path="registrationDate"
								placeholder="Please enter Registration Date" type="hidden"
								class="form-control hasDatepicker" value="${registrationDate}" />
							<span class="help-block"></span>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	$(function() {
		$("#registrationDate").datepicker();
	});
</script>


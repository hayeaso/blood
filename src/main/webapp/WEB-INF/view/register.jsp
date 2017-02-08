<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<jsp:useBean id="now" class="java.util.Date" scope="request" />
<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
<html>
<head>
<spring:url value="/resources/css/style.css" var="stylecss" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<link href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.1/css/datepicker.css" rel="stylesheet"/>
<link href="${stylecss}" rel="stylesheet" />

<title>Register</title>
</head>
<body>
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
							action="register" method="POST">
							<div class="form-group">
								<p>
									<form:errors path="*" cssStyle="color : red;" />
								</p>
								<div class="col-lg-4">
									<label class="control-label" for="firstName">First Name
									</label>
								</div>
								<div class="col-lg-8">
									<form:input id="firstName" path="firstName"
										placeholder="Please enter First Name" type="text"
										class="form-control" value="" />
									<span class="help-block"></span>
								</div>
								<div style="text-align: center;">
									<form:errors path="firstName" cssStyle="color : red;" />
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
									<span class="help-block"></span>
								</div>
								<div style="text-align: center;">
									<form:errors path="lastName" cssStyle="color : red;" />
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
									<span class="help-block"></span>
								</div>
							</div>

							<div class="form-group">
								<div class="col-lg-4">
									<label class="control-label" for="registrationDate">Registration
										Date</label>
								</div>
								<div class="col-lg-8">
									<form:input id="registrationDate" path="registrationDate"
										placeholder="Please enter Registration Date" type="text"
										class="form-control datepicker" value="" />
									<span class="help-block"></span>
								</div>
								<div style="text-align: center;">
									<form:errors path="registrationDate" cssStyle="color : red;" />
								</div>
							</div>

							<div>
								<form:input id="eligible" path="eligible.eligible" type="hidden"
									value="false" />
							</div>


							<div class="form-group">
								<div class="col-lg-4">
									<label class="control-label" for="username">Username</label>
								</div>
								<div class="col-lg-8">
									<form:input id="username" path="username"
										placeholder="Please enter UserName" type="text"
										class="form-control" value="" />
									<span class="help-block"></span>
								</div>
								<div style="text-align: center;">
									<form:errors path="username" cssStyle="color : red;" />
								</div>
							</div>

							<div class="form-group">
								<div class="col-lg-4">
									<label class="control-label" for="password">Password</label>
								</div>
								<div class="col-lg-8">
									<form:input id="password" path="password"
										placeholder="Please enter Password" type="password"
										class="form-control" value="" />
									<span class="help-block"></span>
								</div>
								<div style="text-align: center;">
									<form:errors path="password" cssStyle="color : red;" />
								</div>
							</div>

							<div class="form-group">
								<div class="col-lg-4">
									<label class="control-label" for="password">Confirm
										Password</label>
								</div>
								<div class="col-lg-8">
									<form:input id="confirmPassword" path=""
										placeholder="Please Confirm Password" type="password"
										class="form-control" value="" />
									<span class="help-block"></span>
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
									<span class="help-block"></span>
								</div>
								<div style="text-align: center;">
									<form:errors path="email" cssStyle="color : red;" />
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
									<span class="help-block"></span>
								</div>
								<div style="text-align: center;">
									<form:errors path="address.street" cssStyle="color : red;" />
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
									<span class="help-block"></span>
								</div>
								<div style="text-align: center;">
									<form:errors path="address.city" cssStyle="color : red;" />
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
									<span class="help-block"></span>
								</div>
								<div style="text-align: center;">
									<form:errors path="address.state" cssStyle="color : red;" />
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-4"></div>
								<div class="col-lg-8">
									<input type="submit" id="btnAdd" class="btn btn-info btn-block"
										value="Register" onclick="return Validate()"> <span
										class="help-block"></span> 
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script>
		/* $(function() {
			$(".datepicker").datepicker({
				format: 'mm-dd-yyyy'
			});
		}); */
	</script>
	<script type="text/javascript">
		function Validate() {
			var password = document.getElementById("password").value;
			var confirmPassword = document.getElementById("confirmPassword").value;
			if (password != confirmPassword) {
				alert("Passwords do not match.");
				return false;
			}
			return true;
		}
	</script>
</body>
</html>

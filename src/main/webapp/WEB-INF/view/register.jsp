<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<spring:url value="/resources/css/style.css" var="stylecss" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
	<link href="${stylecss}" rel="stylesheet" />
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>Register</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Register Here</h1>
				<p>Add a New Member
				<p>
			</div>
		</div>
	</section>
	<section class="container">
		<form:form modelAttribute="donor" action="register" class="form-horizontal" method = "POST">
			<fieldset>
				<legend>Add new member</legend>


				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="firstName">First
						Name </label>
					<div class="col-lg-10">
						<form:input id="firstName" path="firstName" type="text"
							class="form:input-large" />

					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="lastName">Last
						Name</label>
					<div class="col-lg-10">
						<form:input id="lastName" path="lastName" type="text"
							class="form:input-large" />

					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="lastName">Blood Group</label>
					<div class="col-lg-10">
					<form:select path="bloodGroup">
						<form:option value="" label="Select Blood Type" />
						<form:options path="${availableOptions}" />
					</form:select>
					</div>
					
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="registrationDate">Registration
						Date</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="registrationDate" path="registrationDate"
								type="text" class="form:input-large" />

						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2" for="username">username</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="username" path="username"
								type="text" class="form:input-large" />

						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2" for="password">Password</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="password" path="password"
								type="password" class="form:input-large" />

						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2" for="password">Confirm Password</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="confirmPassword" path = "" type="password" class="form:input-large" />

						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2" for="email">Email</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="email" path="email"
								type="text" class="form:input-large" />

						</div>
					</div>
				</div>
				<h3>Address</h3>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="street">
						Street</label>
					<div class="col-lg-10">
						<form:input id="street" path="address.street" type="text"
							class="form:input-large" />

					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="city">
						City</label>
					<div class="col-lg-10">
						<form:input id="city" path="address.city" type="text"
							class="form:input-large" />

					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="zip">
						Zip</label>
					<div class="col-lg-10">
						<form:input id="zip" path="address.zip" type="text"
							class="form:input-large" />

					</div>
				</div>


				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary"
							value="Register" onclick="return Validate()" />
					</div>
				</div>

			</fieldset>
		</form:form>
	</section>
	  <script>
  $( function() {
    $( "#registrationDate" ).datepicker();
  } );
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

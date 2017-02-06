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
<title>Login</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Login</h1>
				<p>Already a New Member
				<p>
			</div>
		</div>
	</section>
	<section class="container">
		<form:form  action="login" class="form-horizontal" method="POST">
			<fieldset>
				<legend>Login here</legend>


				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="firstName">User
						Name </label>
					<div class="col-lg-10">
						<input id="username" name="username" type="text"
							class="form:input-large" />

					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="password">Password </label>
					<div class="col-lg-10">
						<input id="password"  name="password" type="password"
							class="form:input-large" />

					</div>
				</div>

				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="login" class="btn btn-primary"
							value="login" />
					</div>
				</div>

			</fieldset>
		</form:form>
	</section>

</body>
</html>

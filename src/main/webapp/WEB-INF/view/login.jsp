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
	<div id="login-overlay" class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">Login to <b>Lifesavers</b></h4> or go back to our <a href="/">main site</a>.
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-xs-6">
						<div class="well">
							<form:form id="loginForm" action="login" class="form-horizontal" method="POST">
								<div class="form-group">
									<label for="username" class="control-label">Username</label>
									<input id="username" name="username" type="text" class="form-control" value="" required title="Please enter your username" placeholder="Username">
									<span class="help-block"></span>
								</div>
								<div class="form-group">
									<label for="password" class="control-label">Password</label>
									<input id="password"  name="password" type="password" class="form-control" placeholder="Password" value="" required title="Please enter your password">
									<span class="help-block"></span>
								</div>
								<div id="loginErrorMsg" class="alert alert-error hide">Wrong username or password</div>
								<div class="checkbox">
									<label>
										<input type="checkbox" name="remember" id="remember"> Remember login
									</label>
									<p class="help-block">(if this is a private computer)</p>
								</div>
								<button type="submit" value="login" name="submit" class="btn btn-success btn-block">Login</button>
							</form:form>
						</div>
					</div>
					<div class="col-xs-6">
						<p class="lead">Register for <span class="text-success">FREE</span></p>
						<ul class="list-unstyled" style="line-height: 2">
							<li><span class="fa fa-check text-success"></span> See all blood doners around you</li>
							<li><span class="fa fa-check text-success"></span> Find on google map</li>
							<li><span class="fa fa-check text-success"></span> Checks the doners eligibility</li>					</ul>
						<p><a href="register" class="btn btn-info btn-block">Register now!</a></p>
					</div>
				</div>
			</div>
		</div>
	
	</div>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>

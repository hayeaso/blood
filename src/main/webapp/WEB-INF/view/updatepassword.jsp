<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Password</title>
<spring:url value="/resources/css/style.css" var="stylecss" />
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<link href="${stylecss}" rel="stylesheet" />
</head>
<body>
	<nav class="navbar navbar-default navbar-static-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Life Savers</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Logout</a></li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</nav>
	
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel"><b>Update Password</b></h4>
			</div>			
			<div class="modal-body">
				<div class="row">
					<div class="well">
						<form:form modelAttribute="updatePassword" class="form-horizontal">
							<div class="form-group">
								<div class="col-lg-4">
									<label class="control-label" for="oldPassword">Old Password</label>
								</div>
								<div class="col-lg-8">
									<form:input id="oldPassword" path="oldPassword" placeholder="Please enter Old Password" type="text" class="form-control" value=""/>
								<span class="help-block"></span>
								</div>								
							</div>
							
							<div class="form-group">
								<div class="col-lg-4">
									<label class="control-label" for="newPassword">New Password</label>
								</div>
								<div class="col-lg-8">
									<form:input id="newPassword" path="newPassword" placeholder="Please enter New Password" type="text" class="form-control" value=""/>
								<span class="help-block"></span>
								</div>								
							</div>
							
							<div class="form-group">
								<div class="col-lg-4">
									<label class="control-label" for="confirmNewPassword">Confirm New Password</label>
								</div>
								<div class="col-lg-8">
									<form:input id="confirmNewPassword" path="confirmNewPassword" placeholder="Please Confirm New Password" type="text" class="form-control" value=""/>
								<span class="help-block"></span>
								</div>								
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
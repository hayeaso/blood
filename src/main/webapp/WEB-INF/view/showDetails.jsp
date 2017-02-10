<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" --%>
<%-- 	pageEncoding="UTF-8"%> --%>

<html>
<head>
<spring:url value="/resources/css/style.css" var="stylecss" />
<spring:url value="/resources/js/map.js" var="mapjs" />
<spring:url value="/resources/js/main.js" var="main" />

<meta charset="utf-8">
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">

<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAJSkscL5mXcTduqx68evG5HpTEOj_h1RM&callback=initMap">
	
</script>
<script src="${mapjs}"></script>
<script src="${main}"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<link href="${stylecss}" rel="stylesheet" />

<title>Dashboard</title>
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
				<a class="navbar-brand" href="#"><spring:message code="lifesavers" text="Life Savers"/></a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="profile/<%= session.getAttribute("donorID") %>">
					<spring:message code="editProfile" text="Edit Profile"/></a></li>
					<li><a href="requests"><spring:message code="request" text="Request"/></a></li>
					<li><a href="demands"><spring:message code="demand" text="Demand"/></a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
				<li><a href="changepassword"><spring:message code="changePassword" text="Change Password"/></a></li>
					<li><a href="logout"><spring:message code="logout" text="Logout"/></a></li>
					<li> <a href="?language=en_US">English</a>| <a href="?language=fr_FR">French</a></li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</nav>
	
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">Search <b>Lifesavers</b></h4>
			</div>			
			<div class="modal-body">
				<div class="row">
					<div class="well">
						<form:form modelAttribute="person" class="form-horizontal">
							<div class="form-group">
								<div class="col-lg-8">
									<form:select path="bloodGroup" class="form-control" id="search">
										<form:option value="" label="Select Blood Type" />
										<form:options path="${availableOptions}" />
									</form:select>
								</div>
								<div class="col-lg-4">
									<a id="search" href="#" class="btn btn-info btn-block" onclick="getdonors()">Search</a>
								</div>								
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container">
		<div class="jumbotron">
			<div id="map"></div>
		</div>
	</div>	
	
	<div class="footer">
		<p class="footer_text">Copyright &copy; Lifesavers 2017 </p>
	</div>
</body>
</html>
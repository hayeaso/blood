<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<nav class="navbar navbar-default navbar-static-top">
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
				<li><a href="profile/<%= session.getAttribute("donorID") %>"><spring:message code="editProfile" text="Edit Profile"/></a></li>
				<li><a href="requests"><spring:message code="request" text="Request"/></a></li>
				<li><a href="demands"><spring:message code="demand" text="Demand"/></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="changepassword"><spring:message code="changePassword" text="Change Password"/></a></li>
				<li><a href="logout"><spring:message code="logout" text="Logout"/></a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Language <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="?language=en_US">English</a></li>
						<li><a href="?language=ne_NP">Nepali</a></li>
						<li><a href="?language=ar">Arabic</a></li>
						<li><a href="?language=fr_FR">French</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
</nav>
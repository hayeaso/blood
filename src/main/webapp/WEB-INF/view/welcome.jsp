<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta charset="utf-8">
<title>Welcome</title>
<spring:url value="/resources/css/style.css" var="stylecss" />
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="${stylecss}" rel="stylesheet" />
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
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
					<li><a href="#about">About</a></li>
					<li><a href="#contact">Contact</a></li>
					
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="register">Sign Up</a></li>
					<li><a href="login">Sign In</a></li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</nav>
	
	<header>
		<div class="carousel fade-carousel slide" data-ride="carousel" data-interval="3000" id="bs-carousel">
			<!-- Overlay -->
			<div class="overlay"></div>

			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#bs-carousel" data-slide-to="0" class="active"></li>
				<li data-target="#bs-carousel" data-slide-to="1"></li>
				<li data-target="#bs-carousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item slides active">
					<div class="slide-1"></div>
					<div class="hero">
						<hgroup>
							<h1>Donate Blood</h1>        
							<h3>Share a little, care a little.</h3>
						</hgroup>
					</div>
				</div>
				<div class="item slides">
					<div class="slide-2"></div>
					<div class="hero">        
						<hgroup>
							<h1>Help Save a Life</h1>        
							<h3>Give the gift of Blood.</h3>
						</hgroup>
					</div>
				</div>
				<div class="item slides">
					<div class="slide-3"></div>
					<div class="hero">        
						<hgroup>
							<h1>Come On. Lets Donate</h1>        
							<h3>It will not effect your Health.</h3>
						</hgroup>
					</div>
				</div>
			</div> 
		</div>
	</header>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>

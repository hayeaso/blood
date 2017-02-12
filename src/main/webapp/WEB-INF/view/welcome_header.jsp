<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="home"><spring:message code="lifesavers" text="Life Savers"/></a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="home">
					<spring:message code="home" text="Home"/></a></li>
					<li><a href="#about"><spring:message code="about" text="About"/></a></li>
					<li><a href="#contact"><spring:message code="contact" text="Contact"/></a></li>
					
				</ul>
				<ul class="nav navbar-nav" style="font-size: 30px;">
					<spring:message code="allahhabibi" text=""/>
				</ul>
				
				<ul class="nav navbar-nav navbar-right">
					
					<li><a href="register"><spring:message code="signup" text="Sign Up"/></a></li>
					<li><a href="login"><spring:message code="signin" text="Sign in"/></a></li>
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
			</div><!--/.nav-collapse -->
		</div>
	</nav>
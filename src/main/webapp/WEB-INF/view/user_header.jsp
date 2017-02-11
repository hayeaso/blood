<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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
				<li><a href="profile/<%=session.getAttribute("donorID")%>">Edit
						Profile</a></li>
				<li><a href="requests">Requests</a></li>
				<li><a href="demands">Demands</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="changepassword">Change Password</a></li>
				<li><a href="logout">Logout</a></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
</nav>
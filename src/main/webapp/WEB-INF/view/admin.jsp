<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html>
<head>
	<spring:url value="/resources/css/style.css" var="stylecss" />
	<meta charset="utf-8">
	<title>Admin Dashboard</title>
	<meta name="description" content="">	
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all"/>
	<link href="${stylecss}" rel="stylesheet" />
</head>
<body>

	<tiles:insertAttribute name="admin_header"></tiles:insertAttribute>
	<tiles:insertAttribute name="admin_body"></tiles:insertAttribute>
	<tiles:insertAttribute name="admin_footer"></tiles:insertAttribute>	
	
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	
</body>
</html>

<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<html>
<head>
<meta charset="utf-8">
<title><tiles:insertAttribute name="welcome_title"></tiles:insertAttribute></title>
<spring:url value="/resources/css/style.css" var="stylecss" />
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="${stylecss}" rel="stylesheet" />
</head>
<body>
	<tiles:insertAttribute name="welcome_header"></tiles:insertAttribute>
	<tiles:insertAttribute name="welcome_body"></tiles:insertAttribute>
	<tiles:insertAttribute name="welcome_footer"></tiles:insertAttribute>	
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>

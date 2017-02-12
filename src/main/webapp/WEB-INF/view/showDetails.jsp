<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<title><tiles:insertAttribute name="user_title"></tiles:insertAttribute></title>
</head>
<body>
	
	<tiles:insertAttribute name="user_header"></tiles:insertAttribute>
		
	<tiles:insertAttribute name="user_search"></tiles:insertAttribute>
	
	<tiles:insertAttribute name="user_body"></tiles:insertAttribute>

	<tiles:insertAttribute name="user_footer"></tiles:insertAttribute>
	
	<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
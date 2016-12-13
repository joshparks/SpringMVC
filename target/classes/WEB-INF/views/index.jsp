 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${pageTitle}</title>

<!-- jquery -->
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.1.min.js"></script>

<!-- bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>

<!-- angularJS -->
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script>
<script type="text/javascript" src="resources/js/app.js"></script>

<!-- page specific -->
<script type="text/javascript"
	src="resources/js/views/ngCity/ngCity_service.js"></script>
<script type="text/javascript"
	src="resources/js/views/ngCity/ngCity_controller.js"></script>

<!-- components -->
<script type="text/javascript" src="resources/components/error/error-directive.js"></script>
<script type="text/javascript" src="resources/components/error/error-controller.js"></script>
<script type="text/javascript" src="resources/components/error/error-service.js"></script>

</head>

<body ng-app="myApp" class="ng-cloak">

	<%@ include file="header.jsp"%>

	<div></div>

</body>

</html>

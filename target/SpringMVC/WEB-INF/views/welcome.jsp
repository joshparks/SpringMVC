<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>

<!-- page specific -->
<link rel="stylesheet" type="text/css" href="resources/css/main.css" media="all" />
<script type="text/javascript" src="resources/js/services.js"></script>

</head>

<body>

	<%@ include file="header.jsp"%>

	<div class="container-fluid">

		<div class="row">
			<div class="col-md-12">
				<p>Greeting : ${greeting}. This is where the action happens.</p>
			</div>
		</div>

	</div>

</body>

</html>
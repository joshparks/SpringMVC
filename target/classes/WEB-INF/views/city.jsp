<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${pageTitle}</title>

<!-- jquery -->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>

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
<link rel="stylesheet" type="text/css" href="resources/css/views/city.css" media="all" />

<script type="text/javascript" src="resources/js/views/city.js"></script>
<script type="text/javascript" src="resources/js/services.js"></script>


</head>

<body>

	<%@ include file="header.jsp"%>

	<div class="container-fluid">
	
		<div class="row">
			
			<div class="col-md-6" style="border: 1px solid #ddd">
			
				<div class="panel panel-default">
					<div class="panel-heading">Get City By Id: </div>
					
					<div class="panel-body">
					 	
					 	<div class="input-group">
							<input type="text" value="" id="city-input" class="form-control" />
							<span class="input-group-btn">
								<button class="btn btn-default" type="button" onclick="ajaxModule.getCityById()">Get City</button>
							</span>
						</div><!-- /input-group -->
					
						<br />
						
						<ul class="list-group">
							<li class="list-group-item">
								<span class="city-label">ID:</span>
								<span id="city-id" class="badge"></span>
							</li>
							<li class="list-group-item">
								<span class="city-label">Name:</span>
								<span id="city-name" class="badge"></span>
							</li>
							<li class="list-group-item">
								<span class="city-label">Country:</span>
								<span id="city-ctry" class="badge"></span>
							</li>
							<li class="list-group-item">
								<span class="city-label">District:</span>
								<span id="city-dist" class="badge"></span>
							</li>
							<li class="list-group-item">
								<span class="city-label">Population:</span>
								<span id="city-pop" class="badge"></span>
							</li>
						</ul>
					</div>
				</div>
			</div>
						
			<div class="col-md-6" style="border: 1px solid #ddd">

				<div class="panel panel-default">
					
					<div class="panel-heading">Add A City</div>
					
					<div class="panel-body">
					 	
						<%-- <form class="form-horizontal"> --%>
						<form:form action="/city/add" method="post" commandName="cityForm" class="form-horizontal">
							
							<div class="form-group">
								<label for="city-input-name" class="col-sm-2">Name:</label>
								<div class="col-sm-10">
									<form:input path="name" type="text" class="form-control" />
									<!-- <input type="text" class="form-control" id="city-input-name" /> -->
								</div>
							</div>
							<div class="form-group">
								<label for="city-input-country" class="col-sm-2">Country:</label>
								<div class="col-sm-10">
									<form:input path="countryCode" type="text" class="form-control" />
									<!-- <input type="text" class="form-control" id="city-input-country" /> -->
								</div>
							</div>
							<div class="form-group">
								<label for="city-input-district" class="col-sm-2">District:</label>
								<div class="col-sm-10">
									<form:input path="district" type="text" class="form-control" />
									<!-- <input type="text" class="form-control" id="city-input-district" /> -->
								</div>
							</div>
							<div class="form-group">
								<label for="city-input-population" class="col-sm-2">Population:</label>
								<div class="col-sm-10">
									<form:input path="population" type="text" class="form-control" />
									<!-- <input type="text" class="form-control" id="city-input-population" /> -->
								</div>
							</div>							
							
							<button type="submit" class="btn btn-default">Submit</button>
						
						</form:form>
					
					</div>
				</div>
				
			</div>
			
		</div>

		<div class="row">
			<div class="col-md-12" style="border: 1px solid #ddd">

				<div align="center">
					
					<table class="table">
						<thead>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Country</th>
								<th>District</th>
								<th>Population</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="city" items="${cities}">
								<tr>
									<td>${city.id}</td>
									<td>${city.name}</td>
									<td>${city.countryCode}</td>
									<td>${city.district}</td>
									<td>${city.population}</td>
								</tr>	
							</c:forEach>
						</tbody>
					</table>
				
				</div>

			</div>
		</div>

	</div>

</body>

</html>
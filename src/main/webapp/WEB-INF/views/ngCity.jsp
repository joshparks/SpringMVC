<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html ng-app="myApp">

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
<script type="text/javascript" src="resources/components/error/error-controller.js"></script>
<script type="text/javascript" src="resources/components/error/error-directive.js"></script>
<script type="text/javascript" src="resources/components/error/error-service.js"></script>

</head>

<body class="ng-cloak">

	<%@ include file="header.jsp" %>

	<div class="container-fluid" ng-controller="CityController as ctrl">

		<div class="row">

			<div class="col-md-12">
			
				<div class="alert alert-info">
					<span>Error Message: </span> <input type="text" ng-model="ctrl.errorMsg" />
					<button class="btn btn-default" ng-click="ctrl.setError()">Call For Error</button>
				</div>
			
				<!-- <error-modal msg="ctrl.errorMsg"></error-modal> -->
				<error-modal></error-modal>

				<div class="alert alert-info">
					<p><strong>Sort Type:</strong> {{ ctrl.tableSort }}</p>
					<p><strong>Sort Reverse:</strong> {{ ctrl.sortReverse }}</p>
					<p><strong>Search Query:</strong> {{ ctrl.tableFilter }}</p>
					
					<br />
					
					<form>
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon"><i class="glyphicon glyphicon-search"></i></div>
								<input type="text" class="form-control" placeholder="Add filter" ng-model="ctrl.tableFilter" />
							</div>      
						</div>
					</form>
					
					<br />
					
					<button id="city-btn" type="button" class="btn btn-default" ng-click="ctrl.getCities()">Get Cities</button>
					
				</div>

				<div class="panel panel-default" ng-show="ctrl.cities.length > 0">
					<div class="panel-heading">
						<strong>MySQL :: World Database :: City Table</strong>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-4">
								<strong>Total Results:</strong> <span class="badge">{{ctrl.cities.length}}</span>
							</div>
							<div class="col-md-4">
								<strong>FilteredResults:</strong> <span class="badge">{{filtered.length}}</span>
							</div>
							<div class="col-md-4">
							
							</div>
						</div>											
					</div>
				</div>
				
				<table class="table table-bordered table-striped" ng-show="ctrl.cities.length > 0">

					<thead>
						<tr>
							<th>
								<a href="#" ng-click="ctrl.tableSort = 'id'; ctrl.sortReverse = !ctrl.sortReverse"> 
									ID 
									<span ng-show="ctrl.tableSort == 'id' && !ctrl.sortReverse" class="glyphicon glyphicon-chevron-down pull-right"></span>
        							<span ng-show="ctrl.tableSort == 'id' && ctrl.sortReverse" class="glyphicon glyphicon-chevron-up pull-right"></span>
								</a>
							</th>
							<th>
								<a href="#" ng-click="ctrl.tableSort = 'name'; ctrl.sortReverse = !ctrl.sortReverse"> 
									Name 
									<span ng-show="ctrl.tableSort == 'name' && !ctrl.sortReverse" class="glyphicon glyphicon-chevron-down pull-right"></span>
        							<span ng-show="ctrl.tableSort == 'name' && ctrl.sortReverse" class="glyphicon glyphicon-chevron-up pull-right"></span>
								</a>
							</th>
							<th>
								<a href="#" ng-click="ctrl.tableSort = 'countryCode'; ctrl.sortReverse = !ctrl.sortReverse"> 
									Country 
									<span ng-show="ctrl.tableSort == 'countryCode' && !ctrl.sortReverse" class="glyphicon glyphicon-chevron-down pull-right"></span>
        							<span ng-show="ctrl.tableSort == 'countryCode' && ctrl.sortReverse" class="glyphicon glyphicon-chevron-up pull-right"></span>
								</a>
							</th>
							<th>
								<a href="#" ng-click="ctrl.tableSort = 'district'; ctrl.sortReverse = !ctrl.sortReverse"> 
									District 
									<span ng-show="ctrl.tableSort == 'district' && !ctrl.sortReverse" class="glyphicon glyphicon-chevron-down pull-right"></span>
        							<span ng-show="ctrl.tableSort == 'district' && ctrl.sortReverse" class="glyphicon glyphicon-chevron-up pull-right"></span>
								</a>
							</th>
							<th>
								<a href="#" ng-click="ctrl.tableSort = 'population'; ctrl.sortReverse = !ctrl.sortReverse"> 
									Population 
									<span ng-show="ctrl.tableSort == 'population' && !ctrl.sortReverse" class="glyphicon glyphicon-chevron-down pull-right"></span>
        							<span ng-show="ctrl.tableSort == 'population' && ctrl.sortReverse" class="glyphicon glyphicon-chevron-up pull-right"></span>
								</a>
							</th>
						</tr>
					</thead>

					<tbody>
						<tr ng-repeat="city in ctrl.cities  | orderBy:ctrl.tableSort:ctrl.sortReverse | filter:ctrl.tableFilter as filtered">
							<td>{{ city.id }}</td>
							<td>{{ city.name }}</td>
							<td>{{ city.countryCode }}</td>
							<td>{{ city.district }}</td>
							<td>{{ city.population }}</td>
						</tr>
					</tbody>

				</table>

			</div>

		</div>

	</div>

</body>

</html>

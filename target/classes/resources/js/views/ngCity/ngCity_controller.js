(function(){
	
	'use strict';

	function CityController ($scope, CityService, ErrorService) {

		var self = this;
		
		self.cities = [];
		
		self.tableSort = 'id'; // set the default sort type
		self.sortReverse = false;  // set the default sort order
		self.tableFilter = '';     // set the default search/filter term
		
		self.getCities = function() {
			
			$('#city-btn').html('Loading...');
			
			var result = CityService.getCityList().then(function(response) {
				console.log('I found: ', response);
				$('#city-btn').html('Get Cities');
				self.cities = response;
			}).error(function() {
				
			});
			
		};
		
		self.errorMsg = '';
		self.setError = function() {
			console.log('Setting error (ngCityCtrl)...');
			ErrorService.setError(self.errorMsg);
		};

	};
	
	CityController.$inject = ['$scope', 'CityService', 'ErrorService'];
	angular.module('myApp.components').controller('CityController', CityController);
	
})();


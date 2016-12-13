(function(){
	
	'use strict';
	 
	function ErrorService () {
		
		var errorMsg = '';
		
		var test = function() {
			return "Service Test Successful";
		};
		
		var setError = function(msg) {
			console.log('ERROR: ', msg);
			errorMsg = msg;
		};
		
		var getError = function() {
			return errorMsg;
		};
		
		return {
			test: test,
			setError: setError,
			getError: getError
		}
	 
	};
	
	ErrorService.$inject = [];
	angular.module('myApp.components').factory('ErrorService', ErrorService);
	
})();


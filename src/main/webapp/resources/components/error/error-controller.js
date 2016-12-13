(function(){
	
	'use strict';

	function ErrorDirectiveCtrl ($scope, ErrorService) {
		
		/*$scope.errorSvc = ErrorService;*/
		
		var self = this;
		
		self.errorMsg = "This is my error message!";
		
		self.testFunc = function() {
			self.test = ErrorService.test();	
		}
		
		/*$scope.$watch('errorSvc.setError()', function(newVal) {
			console.log("New Error: ", newVal);
			self.errorMsg = newVal;
		});*/
		
	};
	
	ErrorDirectiveCtrl.$inject = ['$scope', 'ErrorService'];
	angular.module('myApp.components').controller('ErrorDirectiveCtrl', ErrorDirectiveCtrl);
	
})();


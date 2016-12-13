(function(){
	
	'use-strict';

	function errorModal () {

		var directive = {
			restrict: 'E',
			replace: true,
			templateUrl: 'resources/components/error/error.html',
			controller: 'ErrorDirectiveCtrl',
			/*scope: {
				msg: '@'
			},*/
			link: link
		}
		
		return directive;
		
		function link (scope, elem, attr) {
			console.log('linking directive (errorModal)...');
		}

	};
	
	errorModal.$inject = [];
	angular.module('myApp.components').directive('errorModal', errorModal);
	
})();


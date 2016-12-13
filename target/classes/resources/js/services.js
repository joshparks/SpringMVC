var services = (function () {

	var getList = function() {
	
		$.ajax({
			type: 'GET',
	        url: 'ajaxlist',
	        contentType: 'application/json',
	        dataType: 'json',
			success: function(response) {
				console.log('GetList() - Success: ', response);
			},
			error: function(error) {
				console.log('GetList() - Error: ', error);
			}
		});
		
	}
	
	var testDb = function() {
	
		$.ajax({
			type: 'GET',
	        url: 'testdb',
	        contentType: 'application/json',
	        dataType: 'json',
			success: function(response) {
				console.log('TestDB() - Success: ', response);
			},
			error: function(error) {
				console.log('TestDB() - Error: ', error);
			}
		});
		
	}
	
	var getCityById = function(id) {
		
		var $deferred = $.Deferred();
		
		$.ajax({
			type: 'GET',
	        url: 'city/' + id,
	        contentType: 'application/json',
	        dataType: 'json',
			success: function(response) {
				console.log('GetCity() - Success: ', response);
				$deferred.resolve(response);
			},
			error: function(error) {
				console.log('GetCity() - Error: ', error);
				$deferred.reject(error);
			}
		});
		
		return $deferred.promise();
		
	}
	
	return {
		getList: getList,
		testDb: testDb,
		getCityById: getCityById
	}

})();
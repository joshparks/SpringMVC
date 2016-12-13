var ajaxModule = (function() {

	var getCityById = function() {
		
		var cityId = $('#city-input').val();

		$.when(services.getCityById(cityId)).then(
			function(response) {
				console.log("GetCityById() - SUCCESS: ", response);
				setCityDisplay(response);
			}, 
			function(error) {
				console.log("GetCityById() - ERROR: ", error);
			}
		);

	}
	
	var setCityDisplay = function(city) {
		$('#city-id').html(city.id);
		$('#city-name').html(city.name);
		$('#city-ctry').html(city.countryCode);
		$('#city-dist').html(city.district);
		$('#city-pop').html(city.population);
	}
	
	var test = function() {
		console.log("Test Successful...");
	}

	return {
		getCityById : getCityById,
		test: test
	}

})();
$(function() {
	var countryOptions=null;
	$.getJSON('js/countries.json', function(result) {
		$.each(result, function(i, country) {
			countryOptions += "<option value='" + country.code + "'>"
					+ country.name + "</option>";
		});
		$('#country').html(countryOptions);
	});
	$("#country").change(
			function() {
				var stateOptions=null;
				$.getJSON('js/states.json', function(result) {
					$.each(result, function(i, statename) {
						if ($(country).val() == statename.name) {
							stateOptions += "<option value='" +i+ statename.name
									+ "'>" + statename.code + "</option>";
						}
					});
					$('#state').html(stateOptions);
				});
				
			});
});
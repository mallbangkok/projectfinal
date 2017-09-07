$(document).ready(
		function() {
			load_json_data('type');
			function load_json_data(id, parent_id) {
				var html_code = '';
				$.getJSON('js/country_state_city.json', function(data) {

					html_code += '<option value="">Select ' + id + '</option>';
					$.each(data, function(key, value) {
						if (id == 'type') {
							if (value.parent_id == '0') {
								html_code += '<option value="' + value.id
										+ '">' + value.name + '</option>';
							}
						} else {
							if (value.parent_id == parent_id) {
								html_code += '<option value="' + value.id
										+ '">' + value.name + '</option>';
							}
						}
					});
					$('#' + id).html(html_code);
				});
			}

			$(document).on('change', '#type', function() {
				var country_id = $(this).val();
				if (country_id != '') {
					load_json_data('mall', country_id);
				} else {
					$('#state').html('<option value="">Select state</option>');
				}
			});
		});

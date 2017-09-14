$(function() {
	$("#searchselect").change(
			function() {
				jQuery.get('text/area.txt', function(data) {
					var mallOptions = null;
					mallOptions += "<option value='" + "'>"
							+ "Please select Type" + "</option>";
					var lines = data.split('\n');
					for (var line = 0; line < (lines.length - 1); line++) {
						var demo = lines[line].split(':::');
						if ($(searchselect).val() == demo[0]) {
							mallOptions += "<option value='" + demo[1] + "'>"
									+ demo[1] + "</option>";
						}
					}
					$('#typeselect').html(mallOptions);
					var mallsfirst = "<option value='" + "'>"
					+ "Please select Mall" + "</option>";
					$('#malls').html(mallsfirst);
				});
			});
	$("#typeselect").change(
			function() {
				jQuery.get('text/listmall.txt', function(data) {
					var mallOptions = null;
					mallOptions += "<option value='" + "'>"
							+ "Please select Mall" + "</option>";
					var lines = data.split('\n');
					for (var line = 0; line < (lines.length - 1); line++) {
						var demo = lines[line].split(':::');
						if ($(typeselect).val() == demo[0]) {
							mallOptions += "<option value='" + demo[1] + "'>"
									+ demo[1] + "</option>";
						}
					}
					$('#malls').html(mallOptions);
				});
			});

});

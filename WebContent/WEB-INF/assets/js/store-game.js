$(function() {
	$("#types").change(
			function() {
				alert("100");
				var mallOptions = "<option value='" + "'>" + "Please select Mall100"
						+ "</option>";

				$('#malls').html(mallOptions);
			});

});
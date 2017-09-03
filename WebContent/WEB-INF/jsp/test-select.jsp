<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<br />
	<br />
	<div class="container" style="width: 600px;">
		<h2 align="center">JSON - Dynamic Dependent Dropdown List using
			Jquery and Ajax</h2>
		<br />
		<br /> <select name="type" id="type"
			class="form-control input-lg">
			<option value="">Select type</option>
		</select> <br /> <select name="mall" id="mall" class="form-control input-lg">
			<option value="">Select state</option>
		</select>
	</div>
	
	<script>
		$(document).ready(function(){
		 load_json_data('type');
		 function load_json_data(id, parent_id)
		 {
		  var html_code = '';
		  $.getJSON('js/country_state_city.json', function(data){
		
		   html_code += '<option value="">Select '+id+'</option>';
		   $.each(data, function(key, value){
		    if(id == 'type')
		    {
		     if(value.parent_id == '0')
		     {
		      html_code += '<option value="'+value.id+'">'+value.name+'</option>';
		     }
		    }
		    else
		    {
		     if(value.parent_id == parent_id)
		     {
		      html_code += '<option value="'+value.id+'">'+value.name+'</option>';
		     }
		    }
		   });
		   $('#'+id).html(html_code);
		  });
		 }
		
		 $(document).on('change', '#type', function(){
		  var country_id = $(this).val();
		  if(country_id != '')
		  {
		   load_json_data('mall', country_id);
		  }
		  else
		  {
		   $('#state').html('<option value="">Select state</option>');
		  }
		 });
		});
</script>
</body>
</html>
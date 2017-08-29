<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script type="text/javascript" src="js/jquery-2.1.0.min.js"></script>
<title>Insert title here</title>
</head>
<body>

	<select id="worker"></select>
	<select id="fruits"></select>
	<script type="text/javascript">
		var data = [ // The data
		[ 'Roy', [ 'Apples', 'Peaches' ] ],
				[ 'John', [ 'Oranges', 'Pears', 'Peaches', 'Nuts' ] ] ,
		['Test',['demo','demo']]
		];

		$a = $('#worker'); // The dropdowns
		$b = $('#fruits');

		for (var i = 0; i < data.length; i++) {
			var first = data[i][0];
			$a.append($("<option>"). // Add options
			attr("value", first).data("sel", i).text(first));
		}

		$a.change(function() {
			var index = $(this).children('option:selected').data('sel');
			var second = data[index][1]; // The second-choice data

			$b.html(''); // Clear existing options in second dropdown

			for (var j = 0; j < second.length; j++) {
				$b.append($("<option>"). // Add options
				attr("value", second[j]).data("sel", j).text(second[j]));
			}
		}).change();
		
	</script>
	
       
	
</body>
</html>
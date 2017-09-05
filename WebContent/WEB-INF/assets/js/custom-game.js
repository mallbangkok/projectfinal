$(function(){
	$.getJSON('countries.json ',function(result){
		$.each(result,function(i,country){
			alert(country.name+" "+country.code);
		});
	});
});
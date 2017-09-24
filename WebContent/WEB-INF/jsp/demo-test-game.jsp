<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ=="
	crossorigin="anonymous">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>
</head>

<body>
	<div class="container">
		<h3>A demo of Bootstrap Tabs</h3>

		<!-- Nav tabs -->
		<ul class="nav nav-tabs" role="tablist">
			<li class="active"><a href="#hometab" role="tab"
				data-toggle="tab">Home</a></li>
			<li><a href="#javatab" role="tab" data-toggle="tab">Java</a></li>
			<li><a href="#csharptab" role="tab" data-toggle="tab">C#</a></li>
			<li><a href="#mysqltab" role="tab" data-toggle="tab">MySQL</a></li>

			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">Web <b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="#jquerytab" role="tab" data-toggle="tab">jQuery</a></li>
					<li><a href="#bootstab" role="tab" data-toggle="tab">Bootstrap</a></li>
					<li><a href="#htmltab" role="tab" data-toggle="tab">HTML</a></li>
				</ul></li>

		</ul>
		</li>

		<!-- Tab panes -->
		<div class="tab-content">
			<div class="tab-pane active" id="hometab">Write something for
				home tab</div>
			<div class="tab-pane" id="javatab">The Java is an
				object-oriented programming language that was developed by James
				Gosling from the Sun Microsystems in 1995.</div>
			<div class="tab-pane" id="csharptab">C# is also a programming
				language</div>
			<div class="tab-pane" id="mysqltab">MySQL is a databased mostly
				used for web applications.</div>

			<div class="tab-pane" id="jquerytab">jQuery content here</div>
			<div class="tab-pane" id="bootstab">
				<h1>55</h1>
			</div>
			<div class="tab-pane" id="htmltab">Hypertext Markup Language</div>

		</div>
</body>
</html>


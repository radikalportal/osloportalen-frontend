<#macro masterTemplate title="Welcome">

<!DOCTYPE html>
<html lang="no" ng-app="osloPortalenApp">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<meta name="description" content="">
	<meta name="author" content="Radikalportal">
	<link rel="icon" href="../../favicon.ico">
	<script src="bower_components/angular/angular.js"></script>
	<script src="js/osloPortalenApp/controllers/basic-controllers.js"></script>
	
	
	<title>Beta visning - osloportalen.no</title>
	
	<!-- Bootstrap core CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">
	
	<!-- Custom styles for this template -->
	<link href="css/jumbotron.css" rel="stylesheet">
	<link href="css/osloportalen.css" rel="stylesheet">
	<!-- LeafletJS map -->
	<link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet/v0.7.7/leaflet.css" />
	<!-- /LeafletJS map -->
	<link rel="stylesheet" href="css/font-awesome.min.css" />
	
	<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
	<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
	<script src="js/ie-emulation-modes-warning.js"></script>
	
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	    <![endif]-->
</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top navbar-burger navbar-transparent">
		<div class="container">
			<div class="navbar-header">
				<button id="menu-toggle" type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example">
	                    <span class="sr-only">Toggle navigation</span>
	                    <span class="icon-bar bar1"></span>
	                    <span class="icon-bar bar2"></span>
	                    <span class="icon-bar bar3"></span>
				</button>
				<a class="navbar-brand" href="#">OsloPortalen</a>
			</div>
			<!-- 
			<div id="navbar" class="navbar-collapse collapse">
				<form class="navbar-form navbar-right">
					<div class="form-group">
						<input type="text" placeholder="Email" class="form-control">
					</div>
					<div class="form-group">
						<input type="password" placeholder="Password" class="form-control">
					</div>
					<button type="submit" class="btn btn-success">Sign in</button>
				</form>
			</div>
			 -->
			<!--/.navbar-collapse -->
		</div>
	</nav>

	<!-- Main jumbotron for a primary marketing message or call to action -->
<!-- 	<div class="jumbotron">
		<div class="container">
			<h1>OsloPortalen</h1>
			<p>Osloportalen er en maktkritisk nyhets- og debattkanal for Oslo.<br/>Vi ønsker å være et talerør for folk flest og løfte fram det positive mangfoldet i hovedstaden.</p>
			
			<div class="carousel" ng-controller="InstagramCtrl">
				<ul>
					<li ng-repeat="image in images">
					{{ image.name }}
					{{ image.url }}
					</li>
				</ul>
			</div>
		</div>
	</div>
 -->

	<div id="main_map">
	</div>
	<hr/>
	<div class="alert alert-warning">
		<p>Osloportalen er en maktkritisk nyhets- og debattkanal for Oslo.<br/>Vi ønsker å være et talerør for folk flest og løfte fram det positive mangfoldet i hovedstaden.</p>
		
<!-- 		<div class="carousel" ng-controller="InstagramCtrl">
			<ul>
				<li ng-repeat="image in images">
				{{ image.name }}
				{{ image.url }}
				</li>
			</ul>
		</div> -->
	</div>


	<div class="container">
		<div class="row">
			<h1>Instagram #oslo</h1>
			<script src="http://snapwidget.com/js/snapwidget.js"></script>
			<iframe src="http://snapwidget.com/in/?h=b3Nsb3xpbnwxMjV8MTB8MXx8eWVzfDV8bm9uZXxvblN0YXJ0fG5vfHllcw==&ve=191215" title="Instagram Widget" class="snapwidget-widget" allowTransparency="true" frameborder="0" scrolling="no" style="border:none; overflow:hidden; width:100%;"></iframe>
		</div>
	
		<hr>
	
		<!-- Example row of columns -->
		<div class="row" ng-controller="NewsContentCtrl">
			<div class="col-md-4">
				<h1>Nyheter</h1>
				<h2>{{ news[0].content }}</h2>
				<p>{{ news[0].ingress }}</p>
				<p>
					<a class="btn btn-default" href="{{ news[0].url }}" role="button">Les mer
						&raquo;</a>
				</p>
				
				<h2>{{ news[1].title }}</h2>
				<p>{{ news[2].ingress }}</p>
				<p>
					<a class="btn btn-default" href="{{ news[1].url }}" role="button">Les mer
						&raquo;</a>
				</p>
				
			</div>
			<div class="col-md-4">
				<h2>Twitter</h2>
				<a class="twitter-timeline" href="https://twitter.com/search?q=oslo" data-widget-id="678260325062414336">Tweets about oslo</a>
				<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
			</div>
			<div class="col-md-4">
				<h2>Hendelser</h2>
				<p>Vi tester design!
				Lenke: <a href="http://www.db.no">dagbladet</a>
				Button primary: <a href="#" class="btn btn-primary">Test</a>
				Button danger: <a href="#" class="btn btn-danger">Test</a>
				Button warning: <a href="#" class="btn btn-warning">Test</a>
				</p>
				<p>
					<a class="btn btn-default" href="#" role="button">Les mer
						&raquo;</a>
				</p>
			</div>
		</div>

		<hr>

		<!-- Example row of columns -->
		<div class="row">
			<div class="col-lg12">
				<div class="text-center"><img src="http://dummyimage.com/728x90/000/fff.png&text=Annonse"></div>
			</div>
		</div>

		<hr>

		<!-- Example row of columns -->
		<div class="row">
			<div class="col-md-4">
				<h2>Heading</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
				<p>
					<a class="btn btn-default" href="#" role="button">Les mer
						&raquo;</a>
				</p>
			</div>
			<div class="col-md-4">
				<h2>Heading</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
				<p>
					<a class="btn btn-default" href="#" role="button">Les mer
						&raquo;</a>
				</p>
			</div>
			<div class="col-md-4">
				<h2>Heading</h2>
				<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in,
					egestas eget quam. Vestibulum id ligula porta felis euismod semper.
					Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum
					nibh, ut fermentum massa justo sit amet risus.</p>
				<p>
					<a class="btn btn-default" href="#" role="button">Les mer
						&raquo;</a>
				</p>
			</div>
		</div>

		<!-- Example row of columns -->
		<div class="row">
			<div class="col-md-4">
				<h2>Heading</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
				<p>
					<a class="btn btn-default" href="#" role="button">Les mer
						&raquo;</a>
				</p>
			</div>
			<div class="col-md-4">
				<h2>Heading</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
				<p>
					<a class="btn btn-default" href="#" role="button">Les mer
						&raquo;</a>
				</p>
			</div>
			<div class="col-md-4">
				<h2>Heading</h2>
				<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in,
					egestas eget quam. Vestibulum id ligula porta felis euismod semper.
					Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum
					nibh, ut fermentum massa justo sit amet risus.</p>
				<p>
					<a class="btn btn-default" href="#" role="button">Les mer
						&raquo;</a>
				</p>
			</div>
		</div>

		<hr>

		<footer>
			<p>OsloPortalen drives av en gjeng entusiastiske og samfunnsengasjerte teknologer og journalister. Har du lyst til å bli med på laget?</p>
		</footer>
	</div>
	<!-- /container -->
	<div class="collapse navbar-collapse" style="min-height: 1920px;">
		<ul class="nav navbar-nav">
			<li class="social-links">
				<a href="https://www.facebook.com/CreativeTim">
					<i class="fa fa-facebook-square"></i>
				</a>
				<a href="https://twitter.com/CreativeTim">
					<i class="fa fa-twitter"></i>
		        </a>
				<a href="https://plus.google.com/+CreativetimPage">
					<i class="fa fa-google-plus-square"></i>
				</a>
				<a href="https://dribbble.com/creativetim">
					<i class="fa fa-dribbble"></i>
				</a>
		    </li>
		</ul>
	</div>
	<div class="modal fade" tabindex="-1" role="dialog" id="welcome_modal">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h1>Velkommen til OsloPortalen</h1>
				</div>
				<div class="modal-body">
					<p>Vi bygger et åpent nettsted for å samle alt av nyheter, hendelser som er viktig for oss som bor i Oslo<br/>
					Lurer du på hva som skjer av hendelser i byen? Ønsker du å bli oppdatert på hendelser som er relevant for deg?<br/>
					Vi trenger folk som har lyst til å leke, utfordre og skape denne portalen sammen med oss.</p>
					<h3>Hvem er vi?</h3>
					<p>Osloportalen er en maktkritisk nyhets- og debattkanal for Oslo.<br/>
Vi ønsker å være et talerør for folk flest og løfte fram det positive mangfoldet i hovedstaden.</p>
					<h3>Hold meg oppdatert!</h3>
					<p>
						<a href="http://eepurl.com/bLAV41" target="new" class="btn btn-lg btn-default"><i class="fa fa-cogs"></i> Som utvikler</a>
						<a href="http://eepurl.com/bLA3YL" target="new" class="btn btn-lg btn-default"><i class="fa fa-quote-right"></i> Som journalist</a>
						<a href="http://eepurl.com/bLyCVT" target="new" class="btn btn-lg btn-default"><i class="fa fa-newspaper-o"></i> Hold meg oppdatert</a>
					</p>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
	</script>
	<script src="js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="http://cdn.leafletjs.com/leaflet/v0.7.7/leaflet.js"></script>
	<script src="js/ie10-viewport-bug-workaround.js"></script>
	<script type="text/javascript" src="js/modernizr.js"></script>
	<script type="text/javascript" src="js/menu_scroll.js"></script>
	<script>
		var map = L.map('main_map').setView([59.93042, 10.77072], 12);

<!--		L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6IjZjNmRjNzk3ZmE2MTcwOTEwMGY0MzU3YjUzOWFmNWZhIn0.Y8bhBaUMqFiPrDRW9hieoQ', {
			maxZoom: 18,
			attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, ' +
				'<a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
				'Imagery © <a href="http://mapbox.com">Mapbox</a>',
			id: 'mapbox.streets'
		}).addTo(map);
-->
		var popup = L.popup();

		function onMapClick(e) {
			popup
				.setLatLng(e.latlng)
				.setContent("You clicked the map at " + e.latlng.toString())
				.openOn(map);
		}

		map.on('click', onMapClick);
	</script>
	
	<script>
		$(document).ready(function() {
			console.log("Welcoming modal");
			$("#welcome_modal").modal('show');
		});
	</script>
</body>
</html>


    
</#macro>
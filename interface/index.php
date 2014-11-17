<!DOCTYPE html>
<html>
	<head>
		<title>twitStats</title>
		<link rel="stylesheet" type="text/css" href="styles.css">
		<script src="include/jquery-1.10.2.js"></script>
		<script src="include/jquery-ui-1.10.4.custom.js"></script>
		<script src="include/ajax.js"></script>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
		<script type="text/javascript">
			$(function() {
				$("#tabs").tabs();
				$("#map").load("map.php");
				$("#photowall").load("photowall.php");
				$("#search").load("search.php");
			});
			
	
		</script>

	</head>
	<body>
		<!-- Placeholder login stuff -->
		<form action="login.php" method='post' id="sign">
			<input type='submit' name='signIn' value='Logout' />
		</form>
	
		<div id="banner">
		    twitStats
			<br>
		</div>
		
		<div id="tabs">
			<ul>
				<li><a href="#home">Home</a></li>
				<li><a href="#search">Search</a></li>
				<li><a href="#photowall">Photo Wall</a></li>
				<li><a href="#map">Map</a></li>
				
			</ul>
			
			<div id="home">
				Group 14 of CS3380
				<br>
				We get stats on twitter stuff
			</div>
			
			<div id="search">
			</div>
			<div id="photowall">
			</div>
			<div id="map">
			</div>
			
		</div>
	
	</body>
</html>
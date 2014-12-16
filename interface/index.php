<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="styles.css">
	<meta charset=UTF-8>
	<!-- Bootstrap core CSS -->
	<link href="include/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Bootstrap theme -->
	<link href="include/bootstrap/dist/css/bootstrap-theme.min.css" rel="stylesheet">
	<title>twitStats</title>
</head>
<body>
	<?php
		include 'nav.php'; 
		 // Make sure private data is secured using HTTPS
        if ($_SERVER['HTTPS'] !== 'on') {
                $redirectURL = 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
                header("Location: $redirectURL");
                exit;
        }

	?>
	<center>
    <div class="container theme-showcase" role="main">
      <!-- Main jumbotron for button holding -->
      <div class="jumbotron">
        <h1 style="color:cornflowerblue">twitStats</h1>
		<p>
		   <a href="search.php" class="btn btn-primary btn-lg" role="button" >Search</a>
		   <a href="photowall.php" class="btn btn-primary btn-lg" role="button">Photowall</a>
		   <a href="pie.php" class="btn btn-primary btn-lg" role="button">Charts</a>
		   <a href="map.php" class="btn btn-primary btn-lg" role="button">Map</a>
		</p>
	  </div>
	</div>
	<!-- run scripts at end of page for faster loading -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="include/bootstrap/dist/js/bootstrap.min.js"></script>
 </body>

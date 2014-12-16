<!--
	Simple page for displaying the project distribution.
-->

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="styles.css">
	<meta charset=UTF-8>
	<!-- Bootstrap core CSS -->
	<link href="include/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Bootstrap theme -->
	<link href="include/bootstrap/dist/css/bootstrap-theme.min.css" rel="stylesheet">
	<title>TwitStat - Distribution</title>
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
		<!-- using bootstrap to style the media/pre-formatted paragraph-->
		<div class="media">
		  <a class="media-left" href="https://github.com/jordanbrennan">
			<img class="groupPix" src="pix/jordan.jpg" alt="...">
		  </a>
		  <div class="media-body">
			<h4 class="media-heading">Jordan Brennan</h4>
			<pre>Created the Photowall
Created Individual Tweeter Profile pages
Worked with different aspects of User Interface</pre>
		  </div>
		</div>
		<div class="media">
		  <div class="media-body">
			<h4 class="media-heading">Peter Dirks</h4>
			<pre>Database and User Profile Creation
Added all functionality to Map
Backend of search function and favoriting
</pre>
		  </div>
		  <a class="media-right	" href="https://github.com/PDirks-">
			<img class="groupPix" src="pix/peter.jpg" alt="...">
		  </a>
		</div>
		<div class="media">
		  <a class="media-left" href="https://github.com/Stormhit">
			<img class="groupPix" src="pix/weijian.jpg" alt="...">
		  </a>
		  <div class="media-body">
			<h4 class="media-heading">Weijian Li</h4>
			<pre>Search function creation and modify
Added information to presentation and report.</pre>
		  </div>
		</div>
		<div class="media">
		  <div class="media-body">
			<h4 class="media-heading">Robert Stovall</h4>
			<pre>Created the User Interface
Worked on the Map and Search functions
Combined all the parts and fixed compatibility issues</pre>
		  </div>
		  <a class="media-right	" href="https://github.com/robertastic">
			<img class="groupPix" src="pix/robert.jpg" alt="...">
		  </a>
		</div>
		<div class="media">
		  <a class="media-left" href="https://github.com/huytrinh93">
			<img class="groupPix" src="pix/huy.jpg" alt="...">
		  </a>
		  <div class="media-body">
			<h4 class="media-heading">Huy Trinh</h4>
			<pre>Created multiple type of charts using database
Helped on the general interface and login functionality</pre>
		  </div>
		</div>
		<div class="media">
		  <div class="media-body">
			<h4 class="media-heading">David Ziegler</h4>
			<pre>Managed Users, User Profiles, Login Functionality, 
Database Creation, Delete Favorites Functionality, 
Change Password Page, and Update Description Page</pre>
		  </div>
		  <!-- David doesn't have a github -->
		  <a class="media-right	" href="https://www.facebook.com/david.ziegler.35?fref=ts">
			<img class="groupPix" src="pix/david.jpg" alt="...">
		  </a>
		</div>
	</center>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="include/bootstrap/dist/js/bootstrap.min.js"></script>
 </body>

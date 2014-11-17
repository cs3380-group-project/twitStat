<!--
Name: Robert Stovall
Pawprint: rcsc77
Class: CS3380
Project: Lab 8
TA: Connor Knabe
-->

<?php
	
	include('../secure/database.php');

		
	//Once the submit button is pushed..
	if (isset($_POST['submit'])) {
		header('Location: ./index.php');
	}
	

?>

<!doctype html>
<html>
<head>
	<title>User Tracker 3000</title>
	<link rel="stylesheet" type="text/css" href="styles.css">
	<style>
		
		form{
			text-align: center;
			margin: 0 auto;
		}
	</style>
</head>
<body>
	<div id="banner">
		    twitStats
			<br>
		</div>
		<br>
	<div class="container">
		<form action="<?= $_SERVER['PHP_SELF'] ?>" method='post'>
			<label for='username' >Username:</label>
			<input type='text' name='username' id='username' required/> 
			<br>
			<label for='password' >Password:</label>
			<input type='password' name='password' id='password' required/>
			<br>
			<br>
			<input type='submit' name='submit' value='Login' />
			<br>
		</form>
		<br>
		<form action="registration.php"style="width: 196px">
			<input type="submit" value="Register">
		</form>
		<br>
	</div>
	<br>
</body>
</html>

<html>
<head>
	<title>Update Profile Info</title>
	<link rel="stylesheet" type="text/css" href="styles.css">
	<style>
		h1{
			color: cornflowerblue;
		}
		.cont{
			padding: 0px;
			margin: 0 auto;
			width: 400px;
		}
		
	</style>
				<!-- Bootstrap core CSS -->
	<link href="include/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- Bootstrap theme -->
	<link href="include/bootstrap/dist/css/bootstrap-theme.min.css" rel="stylesheet">
</head>
<body>
	<?php include 'nav.php'; ?>
	<center>
	<h1>Update Your Profile Description</h1>
	<form method="post">
	<div class = "cont">
		<textarea id = "description" name = "description" rows="5" cols="50" placeholder="New Description..."></textarea>
		<br>
		<input type="submit" class="btn" id = "update" name ="update" value = "Update"></input>
		<input id = "back" class="btn" type="button" name = "back" value ="Back To Profile"></input>
	</div>
	</br>
	</form>
	<script>
		document.getElementById("back").onclick = function () {
		location.href = "profile.php";
		};
	</script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="include/bootstrap/dist/js/bootstrap.min.js"></script>
	</center>
</body>
</html>
<?php
	session_start();
	//if no session exists, redirect to index
	if(!isset($_SESSION['login_user'])){
		header("location: index.php");
	}
	$user = $_SESSION['login_user'];
	//connect to database and get description of user from user_info table
	include("../secure/database.php");
    $conn = pg_connect(HOST." ".DBNAME." ".USERNAME." ".PASSWORD) or die('Could not connect: ' . pg_last_error());
	$result = pg_prepare($conn,"GET_DESC","SELECT description FROM twitstat.user_info WHERE username = $1");
	$result = pg_execute($conn,"GET_DESC",array($user));
	$line = pg_fetch_array($result, null, PGSQL_ASSOC);
	//print username and user description
	echo "<div align='center' class = 'container'><h3>Current User:  $user </h3>\n <p><b>Current Description:</b> $line[description]</p></div>";
	//free result and close connection to the database
	pg_free_result($result);
	pg_close($conn);
?>
<?php
	//if update button is pressed get the username and id
	if(isset($_POST['update'])){
		$user = $_SESSION['login_user'];
		$nd = $_POST['description'];
		//connect to database
		$conn = pg_connect(HOST." ".DBNAME." ".USERNAME." ".PASSWORD) or die('Could not connect: ' . pg_last_error());
		//update user info
		$result = pg_prepare($conn,"Update","UPDATE twitstat.user_info SET description = $1 WHERE username = $2");
		$result = pg_execute($conn,"Update",array($nd,$user));
		//get users ip address
		$ip = $_SERVER['REMOTE_ADDR'];
		//log activity of user
		$result = pg_prepare($conn,"Log_Activity","INSERT INTO twitstat.log (username,ip_address,action) VALUES($1,$2,'Description Updated')");
		$result = pg_execute($conn, "Log_Activity",array($user,$ip));
		//free result and close connection to database
		pg_free_result($result);
		pg_close($conn);
		//return to profile
		header("location: profile.php");
	}
?>
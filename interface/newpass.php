<html>
<head>
<title>twitStat - Password</title>
<link href="include/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- Bootstrap theme -->
	<link href="include/bootstrap/dist/css/bootstrap-theme.min.css" rel="stylesheet">
<style>
	#title{
		text-align: center;
	}
	#submit{
		width: 250px;
	}
	.cont{
		padding: 0px;
		margin: 0 auto;
		width: 320px;
	}
	#out{
			text-align: center;
			color: red;
		}
</style>
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
	<h1 id = title style="color: cornflowerblue;">Change User Password</h1>
	<form method="post" role="form">
		<div class="cont form-group">
			<b>Current Password:</b> 
			<input class="form-control" type = "password" name="opwd"></input></br>
			<b>New Password:</b> 
			<input class="form-control" type = "password" name="npwd"></input></br>
			<b>Confirm New Password:</b> 
			<input class="form-control" type = "password" name="cnpwd"></input></br>
		</div>
		<center>
		<div class="cont">
			<input type="submit" class="btn btn-default" name ="submit" value = "Apply"></input>
			<input id = "cancel" class="btn btn-default" type="button" name ="cancel" value = "Cancel"></input></br></br>
		</div>
		</center>
	</form>
<script>
	document.getElementById("cancel").onclick = function () {
		location.href = "profile.php";
    };
</script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="include/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>
<?php
	session_start();
	//if user is not logged in, redirect to index
	if(!isset($_SESSION['login_user'])){
		header("location: index.php");
	}
	if(isset($_POST['submit'])){
		$user = $_SESSION['login_user'];
		$oldpass = $_POST['opwd'];
		$newpass = $_POST['npwd'];
		$confirm = $_POST['cnpwd'];
		//if username or password fields are empty, print error
		if (empty($oldpass) || empty($newpass)||empty($confirm)){
			$error = 'One or more fields are empty';
			echo "<div id=out>$error</div>";
		}
		else{
			if($newpass <> $confirm){
				$error = 'The new passwords do not Match!';
				echo "<div id=out>$error</div>";
			}
			else{
				include("../secure/database.php");
				$conn = pg_connect(HOST." ".DBNAME." ".USERNAME." ".PASSWORD) or die('Could not connect: ' . pg_last_error());
				$result = pg_prepare($conn,"User_Check", "SELECT * FROM twitstat.authentication WHERE username = $1");
				$result = pg_execute($conn,"User_Check", array($user));
				$salt = pg_fetch_result($result,'salt');
				$oldcheck = pg_fetch_result($result,'password_hash');
				$pwh = sha1($oldpass);
				$oldatt = sha1($pwh + $salt);
				if($oldatt <> $oldcheck){
					pg_free_result($result);
					pg_close($conn);
					$error = 'Your Current Password Input Does Not Match Our Records.';
					echo "<div id=out>$error</div>";
				}
				else{
					$npwh = sha1($newpass);
					$npass = sha1($npwh+$salt);
					$result = pg_prepare($conn,"Update_Pass", "UPDATE twitstat.authentication SET password_hash = $1 WHERE username = $2");
					$result = pg_execute($conn,"Update_Pass",array($npass,$user));
					$ip = $_SERVER['REMOTE_ADDR'];
					$result = pg_prepare($conn,"Log_Activity","INSERT INTO twitstat.log (username,ip_address,action) VALUES($1,$2,'Password Changed')");
					$result = pg_execute($conn, "Log_Activity",array($user,$ip));
					pg_free_result($result);
					pg_close($conn);
					header("location: profile.php");
				}
			}
		}
	}
?>

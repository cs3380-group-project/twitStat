<!DOCTYPE html>
<html>
<head>
<title>Register New User</title>
	<link rel="stylesheet" type="text/css" href="styles.css">
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
	.container{
		padding: 0px;
		margin: 0 auto;
		width: 500px;
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
	<h1 id = title style="color:cornflowerblue;">Create New User</h1>
	<form method="post">
	<CENTER>
		<div class=container>
			<b>Username:</b> <input type = "text" class="form-control" name="usr"></input></br>
			<b>Password:</b> <input type = "password" class="form-control" name="pwd"></input>
		</div>
		<div class=container>
			<br>
			<input type="submit" class="btn" name ="submit" value = "Register"></input></br></br>
			<input type = "button" class="btn" id = "home" value = "Return To Login"></input></br></br>
		</div>
	</form>
<script>
	document.getElementById("home").onclick = function () {
		location.href = "login.php";
    };
</script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="include/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>
<?php
	if(isset($_POST['submit'])){
		$user = $_POST['usr'];
		$pass = $_POST{'pwd'};
		$error='';
		//if username or password fields are empty, print error
		if (empty($user) || empty($pass)){
			$error = 'Username or Password field is empty';
			echo "<div id=out>$error</div>";
		}
		else{
			//connect to database
		include("../secure/database.php");
        $conn = pg_connect(HOST." ".DBNAME." ".USERNAME." ".PASSWORD)
	        or die('Could not connect: ' . pg_last_error());
			//check if username exists in database
			$result = pg_prepare($conn,"Check", "SELECT * FROM twitstat.authentication WHERE username = $1");
			$result = pg_execute($conn,"Check",array($user));
			$rows = pg_num_rows($result);
			//if username exists, print error
			if ($rows == 1) {
				$error='Username Is Already Taken!';
				echo "<div id=out>$error</div>";
			}
			else{
				//generate random number
				$num = rand();
				//generate salt from random int
				$salt = sha1($num);
				//generate password hash
				$pwh = sha1($pass);
				$ph = sha1($pwh+$salt);
				//get current date and time
				$date = date('Y/m/d H:i:s');
				//create user info and authentication entry in database
				$result = pg_prepare($conn,"Create_User_Info", "INSERT INTO twitstat.user_info (username, registration_date, description) VALUES($1, default, 'NO DESCRIPTION')");
				$result = pg_execute($conn,"Create_User_Info", array($user)) or die('create user info ex fail: ' . pg_last_error());
				
				$result = pg_prepare($conn,"Create_User","INSERT INTO twitstat.authentication VALUES($1,$2,$3)") or die('auth prep failed: ' . pg_last_error());
				$result = pg_execute($conn,"Create_User",array($user,$ph,$salt)) or die('auth exc failed: ' . pg_last_error());;
				//get client ip
				$ip = $_SERVER['REMOTE_ADDR'];
				//log the user logging in after user is registered
				$result = pg_prepare($conn,"Log","INSERT INTO twitstat.log (username,ip_address,action) VALUES($1,$2,'Account Login')");
				$result = pg_execute($conn,"Log",array($user,$ip));
				$error='User Created Successfully!';
				echo "<div id=out>$error</div>";
				session_start();
				$_SESSION['login_user']=$user;
				//redirect to profile
				header("location: profile.php");
			}
			pg_free_result($result);
			pg_close($conn);
		}
	}
?>

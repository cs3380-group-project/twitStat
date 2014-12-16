<?php
 // Make sure private data is secured using HTTPS
        if ($_SERVER['HTTPS'] !== 'on') {
                $redirectURL = 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
                header("Location: $redirectURL");
                exit;
        }
	
	include('../secure/database.php');

		
	

?>

<!doctype html>
<html>
<head>
	<link href="include/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- Bootstrap theme -->
	<link href="include/bootstrap/dist/css/bootstrap-theme.min.css" rel="stylesheet">
	<title>twitStats</title>
	<link rel="stylesheet" type="text/css" href="styles.css">
	<style>
		
		form{
			text-align: center;
			margin: 0 auto;
		}
		.cont{
			width: 500px;
			text-align:center;
			margin: 0 auto;
		}
	</style>
</head>
<body>
	<?php include 'nav.php'; ?>
	<div class="cont">
		<h1 id = title style="color:cornflowerblue;">Login</h1>
		<form action="<?= $_SERVER['PHP_SELF'] ?>" method='post'>
			<label for='username' >Username:</label>
			<input type='text' class="form-control" name='username' id='username' required/> 
			<br>
			<label for='password' >Password:</label>
			<input type='password' class="form-control" name='password' id='password' required/>
			<br>
			<br>
			<input type='submit' class="btn" name='submit' value='Login' />
			<br>
		</form>
		<br>
		<form action="registration.php"style="width: 196px">
			<input type="button" class="btn" id = "register" value="Register">
		</form>
		<br>
	</div>
	<br>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="include/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>
<?php
	session_start();
	//if session already exists, redirect to profile
	if(isset($_SESSION['login_user'])){
		header("location: profile.php");
	}
	//if submit button is pressed, login
	if(isset($_POST['submit'])){
		$user = $_POST['username'];
		$pass = $_POST{'password'};
		$error='';
		//if username or password field is empty, print error
		if (empty($user) || empty($pass)){
			$error = 'Username or Password field is empty';
			echo "<div id=out>$error</div>";
		}
		else{
			//connect to database
			include("../secure/database.php");
			$dbconn = pg_connect(HOST." ".DBNAME." ".USERNAME." ".PASSWORD) or die('Could not connect: ' . pg_last_error());
			//check if user exists in authentication table
			$result = pg_prepare($dbconn,"User_Check", "SELECT * FROM twitstat.authentication WHERE username = $1");
			$result = pg_execute($dbconn,"User_Check", array($user));
			$rows = pg_num_rows($result);
			//if username exists, check password attempt
			if ($rows == 1) {
				$salt = pg_fetch_result($result,'salt');
				$pwh = sha1($pass);
				$attempt = sha1($pwh + $salt);
				//attempt to login using supplied credentials
				$result = pg_prepare($dbconn, "Login_Attempt", "SELECT * FROM twitstat.authentication WHERE username = $1 AND password_hash = $2");
				$result = pg_execute($dbconn, "Login_Attempt", array($user,$attempt));
				$rows = pg_num_rows($result);
				//if credentials match, log the action of user
				if ($rows == 1) {
					$ip = $_SERVER['REMOTE_ADDR'];
					$result = pg_prepare($dbconn,"Log_Activity","INSERT INTO twitstat.log (username,ip_address,log_date,action) VALUES($1,$2,default,'Account Login')");
					$result = pg_execute($dbconn, "Log_Activity",array($user,$ip));
					session_start();
					$_SESSION['login_user']=$user;
					//redirect to profile
					header("location: profile.php");
				}
				else{
					//if password is invalid, issue error
					$error = 'Password is invalid';
					echo '<div id=out style="color:red; text-align:center">'.$error.'</div>';
				}
			}
			else{
				//if username is invalid, issue error
				$error = 'Username is invalid';
				echo '<div id=out style="color:red; text-align:center">'.$error.'</div>';
			}
			//free result and close connection to database
			pg_free_result($result);
			pg_close($conn);
		}
	}
?>
<script>
	document.getElementById("register").onclick = function () {
		location.href = "register.php";
    };
</script>

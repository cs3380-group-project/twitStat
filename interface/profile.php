<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="styles.css">
	<meta charset=UTF-8>
	<!-- Bootstrap core CSS -->
	<link href="include/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Bootstrap theme -->
	<link href="include/bootstrap/dist/css/bootstrap-theme.min.css" rel="stylesheet">
	<style>
	h1{
		text-align: center;
	}
	h3{
		text-align: center;
	}
	.tablecontainer{
		padding: 0px;
		margin: 0 auto;
		width: 750px;
	}

	.cont{
		padding: 0px;
		margin: 0 auto;
		width: 200px;
	}
	#logout{
		width: 200px;
	}
</style>
	<title>twitStat - Profile</title>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script>
	function delFav(ID){
		var url = "DeleteFav.php?id="+ID;
		$.get(url,function(response){
			console.log("get! "+response);
		})
	}
</script>
</head>
<body>

	<?php include 'nav.php'; ?>
	<center>
	<!--
	not sure if we need this
	<link href="include/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="include/bootstrap/dist/css/bootstrap-theme.min.css" rel="stylesheet">
	-->
	<?php
		session_start();
		//if user is not logged in, redirect to index
		if(!isset($_SESSION['login_user'])){
			header("location: login.php");
		}
		//construct user's profile
		$user = $_SESSION['login_user'];
		//welcome message
		echo "<h1>Welcome $user!</h1>";
		//connect to database and get info of user
		include("../secure/database.php");
        $conn = pg_connect(HOST." ".DBNAME." ".USERNAME." ".PASSWORD) or die('Could not connect: ' . pg_last_error());
		$result = pg_prepare($conn,"Get_Info","SELECT registration_date, description FROM twitstat.user_info WHERE username = $1");
		$result = pg_execute($conn,"Get_Info",array($user));
		//create table of user registration date and description
		echo "<div class = tablecontainer>\n";
		echo "<table class='table-bordered' border = '1'>\n";
		while ($i < pg_num_fields($result)){
			$fieldName = pg_field_name($result, $i);
			echo '<th style="text-align:center;">' . $fieldName . '</th>';
			$i = $i + 1;
		}
		while ($line = pg_fetch_array($result, null, PGSQL_ASSOC)) {
			echo "\t<tr>\n";
			foreach ($line as $col_value) {
				echo "\t\t<td>$col_value</td>\n";
			}
			echo "\t</tr>\n";
		}
		echo "</table>\n</br>";
		echo "<input id = 'update' class='btn' type='button' name = 'update' value ='Update Description'></input>";
		echo "<input id = 'cpass' class='btn' type='button' name = 'cpass' value ='Change Password'></input>";
		echo "</div>";
		//reset variable for next table
		$i =0;
		//free result
		pg_free_result($result);
		pg_close($conn);
?>

<?php
	$conn = pg_connect(HOST." ".DBNAME." ".USERNAME." ".PASSWORD) or die('Could not connect: ' . pg_last_error());
	echo "<h3>Favorite Tweets</h3>";
	
	$favQ ="SELECT u.screen_name, f.fav_date, f.tweetid, t.tweet 
			FROM twitstat.favorites as f 
			inner join twitstat.tweets as t
			on f.tweetid = t.id
			inner join twitstat.twit_user as u
			on t.user_id = u.usr_id
			WHERE username = $1";
	$result = pg_prepare($conn,"GetFavs",$favQ) or die('PG_PREP FAIL: ' . pg_last_error());
	$result = pg_execute($conn,"GetFavs",array($user))or die('PG_EXEC FAIL: ' . pg_last_error());
	echo "<div id='favTable' class = 'tablecontainer'>";
	echo "<table class='table-bordered' border = '1'>\n";
	echo "<th style='text-align: center;'>Action</th>";
	while ($i < pg_num_fields($result)){
		$fieldName = pg_field_name($result, $i);
		echo '<th style="text-align: center;">' . $fieldName . '</th>';
		$i = $i + 1;
	}
	while ($line = pg_fetch_array($result, null, PGSQL_NUM)) {
		echo "\t<tr>\n";
		$idToDel = $line[2];
		echo "<td><input id = 'delete' type='button' class='btn' value= 'Delete'  rows='5' onClick='window.location.href=window.location.href; delFav(\"".$idToDel."\")'/></td>\n";
		$linecount = 0;
		foreach ($line as $col_value) {
			if( $linecount < 4 ){					// keep track of which column being worked with...
				if( $linecount == 3 ){
					$textSwap = $col_value;
					$textSwap = str_replace( array(";;"), "'", $textSwap  );
					$textSwap = str_replace( array("::"), "\"", $textSwap  );
					echo "\t\t<td>$textSwap</td>\n";
				}
				else	echo "\t\t<td>$col_value</td>\n";
				$linecount++;
			}// end col count check
			else $linecount = 0;
		}
		echo "\t</tr>\n";
	}
	echo "</table>\n";
	echo "</div> </br>";
	pg_free_result($result);
	pg_close($conn);
?>
	</br>
	<div class = "cont">
	<input id = "logout" class='btn' type="button" name = "logout" value ="Logout"></input>
	</div>
	<script>
		document.getElementById("logout").onclick = function () {
		location.href = "logout.php";
		};
		document.getElementById("cpass").onclick = function () {
		location.href = "newpass.php";
		};
		document.getElementById("update").onclick = function () {
		location.href = "UpdateDesc.php";
		};
	</script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="include/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>

<?php
	session_start();
	$user = $_SESSION['login_user'];
	include("../secure/database.php");
    $conn = pg_connect(HOST." ".DBNAME." ".USERNAME." ".PASSWORD) or die('Could not connect: ' . pg_last_error());
	$ID = htmlspecialchars($_GET['id']);
	$result = pg_prepare($conn, "Del", "DELETE FROM twitstat.favorites WHERE username = $1 AND tweetID = $2");
	$result = pg_execute($conn, "Del", array($user,$ID));
	if($result ==false){
		echo "Delete Failed!";
	}
	else{
		echo "Deleted!";
	}
	pg_free_result($result);
	pg_close($conn);
?>
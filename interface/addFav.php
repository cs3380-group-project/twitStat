<?php
/*
 *	Add favorites 
 */
session_start();
 // Make sure private data is secured using HTTPS
        if ($_SERVER['HTTPS'] !== 'on') {
                $redirectURL = 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
                header("Location: $redirectURL");
                exit;
        }

include("../secure/database.php");
$conn = pg_connect(HOST." ".DBNAME." ".USERNAME." ".PASSWORD) or die("Failed to connect to the database");
$id = htmlspecialchars( $_GET['id'] );
$user = htmlspecialchars( $_GET['user'] ); 

$query = "insert into twitStat.favorites values ($1, default, $2 )";
$type = 'addFav';
$result = pg_prepare($conn, $type, $query )							// put prepared statements together
	or die('Prepare failed: ' . pg_last_error());
$result = pg_execute($conn, $type, array( $user, $id ) )				// execute statements
	or die('execute failed: ' . pg_last_error());

if($result == false){
	echo "fail";
}
else{
	echo "added!";
}
?>

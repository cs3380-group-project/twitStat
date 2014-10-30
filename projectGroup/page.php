<?php
	// Make sure private data is secured using HTTPS
	if ($_SERVER['HTTPS'] !== 'on') {
		$redirectURL = 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
		header("Location: $redirectURL");
		exit;
	}
	
	if(!session_start()) {
		$errorMessage = "Unable to start session.";
		$contentURL = "error_info.php";
		require "layout.php";
		exit;
	}
	$loggedIn = empty($_SESSION['loggedin']) ? false : $_SESSION['loggedin'];
	if (!$loggedIn) {
		header("Location: login.php");
		exit;
	}
	
	$page = empty($_GET['page']) ? "page" : $_GET['page'];
	
	$contentURL = $page . ".php";
	require "layout.php";
?>
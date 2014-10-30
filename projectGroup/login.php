<?php
	// Make sure the form is served using HTTPS
	if ($_SERVER['HTTPS'] !== 'on') {
		$redirectURL = 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
		header("Location: $redirectURL");
		exit;
	}
	
	// Attempt to start/resume the session
	if(!session_start()) {
		$errorMessage = "Unable to start session.";
		$contentURL = "error_info.php";
		require "layout.php";
		exit;
	}
	
	// If the user is logged in, redirect them home
	$loggedIn = empty($_SESSION['loggedin']) ? false : $_SESSION['loggedin'];
	if ($loggedIn) {
		header("Location: page.php?page=page1");
		exit;
	}
	
	$action = empty($_POST['action']) ? '' : $_POST['action'];
	
	if ($action == 'do_login') {
		handle_login();
	} else {
		login_form();
	}
	
	function handle_login() {
		$username = empty($_POST['username']) ? '' : $_POST['username'];
		$password = empty($_POST['password']) ? '' : $_POST['password'];
	
		if ($username == "test" && $password == "pass") {
			$_SESSION['loggedin'] = $username;
			header("Location: page.php?page=page1");
			exit;
		} else {
			$error = 'Login failed.  Try test and data.';
			$contentURL = "login_form.php";
			require "layout.php";
		}		
	}
	
	function login_form() {
		$username = "";
		$error = "";
		$contentURL = "login_form.php";
		require "layout.php";
	}
	
?>
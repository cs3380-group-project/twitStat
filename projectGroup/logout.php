<?php
	if(!session_start()) {		
		$errorMessage = "Unable to start session.";
		$contentURL = "error_info.php";
		require "layout.php";
		exit;	
	}
	
	/*
	http://www.php.net/manual/en/function.session-destroy.php
	*/
	$_SESSION = array(); // unset session variables
	if (ini_get("session.use_cookies")) {
		$params = session_get_cookie_params();
		setcookie(session_name(), '', 1,
			$params["path"], $params["domain"],
			$params["secure"], $params["httponly"]
		);
	}
	session_destroy(); // destroy session
	
	header("Location: index.php");
	exit;
?>
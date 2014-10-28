<!DOCTYPE html>
<html>
<head>
	<title>Twitter</title>
	<style>
		a:link {color:blue;}    /* unvisited link */
		a:visited {color:red;} /* visited link */
		a:hover {color:yellow;}   /* mouse over link */
		a:active {color:pink;}  /* selected link */
		.error {
			color: red;
		}
		
		h1#title {
			background-color: Light Blue;
			color: white;
			text-align: center;
			height=100;
		}
		
		div#footer {
			padding: 10px;
			border-top: 1px dotted black;
			text-align: center;
			position:fixed;
			bottom:0;
			right:0;
		}
	</style>
</head>
<body background="images/background.jpg">
	<h1 id="title">Twitter</h1>
	<?php require "menu.php"; ?>
	<?php require $contentURL; ?>
	<div id="footer">Copyright &copy; Group 14</div>
</body>
</html>
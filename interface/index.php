<!DOCTYPE html>
<html>
	<head>
		<title>twitStats</title>
		<link rel="stylesheet" type="text/css" href="styles.css">
		<script src="include/jquery-1.10.2.js"></script>
		<script src="include/jquery-ui-1.10.4.custom.js"></script>
		<script src="include/ajax.js"></script>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
		<script type="text/javascript">
		</script>

	</head>
	<body>
		<!-- Placeholder login stuff -->
		<form action="login.php" method='post' id="sign">
			<input type='submit' name='signIn' value='Logout' />
		</form>
	
		<div id="banner">
		    twitStats
			<br>
		</div>
		<table border="0">
		<tr>
			<td>
				<form action="index.php" method='post' >
					<input type='submit' name='submit' value="Home" class="buttons"/>
					<br>
				</form>
			</td>	
			<td>	
				<form action="search.php" method='post' >
					<input type='submit' name='submit' value="Search" class="buttons"/>
					<br>
				</form>
			</td>
			<td>
				<form action="photowall.php" method='post' >
					<input type='submit' name='submit' value="Photowall" class="buttons"/>
					<br>
				</form>
			</td>	
			<td>	
				<form action="map.php" method='post' >
					<input type='submit' name='submit' value="Map" class="buttons"/>
					<br>
				</form>
			</td>	
			<td>	
				<form action="pie.php" method='post' >
					<input type='submit' name='submit' value="Pie" class="buttons"/>
					<br>
				</form>
			</td>	
		</table>		
		<br>
		<div id="home">
			Group 14 of CS3380
			<br>
			We get stats on twitter stuff
		</div>
	</body>
</html>

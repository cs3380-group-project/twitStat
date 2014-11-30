<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="styles.css">
	<meta charset=UTF-8>
	<title>TwitStat - Photowall</title>
<head>
<body>

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
	<center>
<?php

	//get page number from url
	$curr_page = $_GET['page'];
	if ($curr_page < 1 || empty($curr_page)) $curr_page = 1;
 
	//connect to database
	//THIS WILL NEED TO BE UPDATED TO OUR DATABASE CREDENTIALS!!!
	include("../../secure/database.php");
        $conn = pg_connect(HOST." ".DBNAME." ".USERNAME." ".PASSWORD) or die("Failed to connect to the database");

	$user_info = pg_prepare($conn, 'get-user-info', "SELECT usr_id, screen_name, profile_img_url FROM twitStat.twit_user LIMIT 20 OFFSET $1")
		or die("Failed to prepare query for user info: ". pg_last_error());
	$user_info = pg_execute($conn, 'get-user-info', array(20*($curr_page-1))) or die("Failed to execute user info query");
	//$user_info = pg_query("SELECT usr_id, screen_name, profile_img_url FROM twitStat.twit_user LIMIT 20") or die('Query failed: ' . pg_last_error() );

	echo "\t<table style=\"width:85%\" >\n\t\t<tr>\n";
	//echo "\t\t  <td align =\"center\">". (($curr_page >= 2)? "<a href=\"photowall.php?page=" .($curr_page-1). "\">Previous Page<br/><br/></a>" : "" ) ."</td>".
		"\t\t<td></td>\t\t<td></td>\t\t<td align = \"center\"><a href=\"photowall.php?page=" .($curr_page+1). "\">Next Page<br/><br/></a></td>\n\t\t</tr>\n\t\t<tr>\n";

	$colcounter = 1;
	while ($line = pg_fetch_array($user_info, null, PGSQL_ASSOC)){
		echo "\t\t  <td align=\"center\"><br/><a href= \"tweeter.php?id=" .$line['usr_id']. "&page=".$curr_page. "\">"
			. $line['screen_name'] . "<br/><img src=\"" . $line['profile_img_url'] . "\" height=\"100\" width = \"100\"></a><br/></td>\n";
		if (0 == ($colcounter++ % 4) ) {
			echo "\t\t</tr>\n\t\t<tr>";
		}
	}

	echo "\t\t  <td align =\"center\">". (($curr_page >= 2)? "<a href=\"photowall.php?page=" .($curr_page-1). "\"><br/><br/>Previous Page<br/><br/></a>" : "" ) ."</td>".
                "\t\t<td></td>\t\t<td></td>\t\t<td align = \"center\"><a href=\"photowall.php?page=" .($curr_page+1). "\"><br/><br/>Next Page<br/><br/></a></td>\n";
	echo "\t\t</tr>\n\t</table>\n";

	pg_free_result($user_info);
	pg_close($conn);
?>
	</center>
</body>
</html>

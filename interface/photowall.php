<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="styles.css">
	<meta charset=UTF-8>
			<!-- Bootstrap core CSS -->
	<link href="include/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- Bootstrap theme -->
	<link href="include/bootstrap/dist/css/bootstrap-theme.min.css" rel="stylesheet">
	<title>TwitStat - Photowall</title>
<head>
<body>
	<?php include 'nav.php'; ?>
	<center>
<?php
 // Make sure private data is secured using HTTPS
        if ($_SERVER['HTTPS'] !== 'on') {
                $redirectURL = 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
                header("Location: $redirectURL");
                exit;
        }
	
	//get page number from url
	$curr_page = $_GET['page'];
	if ($curr_page < 1 || empty($curr_page)) $curr_page = 1;
 	
	//connect to database
	include("../secure/database.php");
        $conn = pg_connect(HOST." ".DBNAME." ".USERNAME." ".PASSWORD) or die("Failed to connect to the database");
	$user_info = pg_prepare($conn, 'get-user-info', "SELECT usr_id, profile_img_url FROM twitStat.twit_user LIMIT 150 OFFSET $1")
		or die("Failed to prepare query for user info: ". pg_last_error());
	$user_info = pg_execute($conn, 'get-user-info', array(150*($curr_page-1))) or die("Failed to execute user info query");

	//table for tweeter pictures
	echo "\t<table id=\"picwall\" >\n\t\t<tr>\n";
	$colCounter = 1;
	$picCounter = 0;
	while ( ($picCounter < 70 )  && $line = pg_fetch_array($user_info, null, PGSQL_ASSOC)){
		//Note: the getimagesize() function is used to check whether the users image is
		// valid and still exists on twitter's site.  If so, it is displayed
		if (@getimagesize($line['profile_img_url']) )
		{
			echo "\t\t  <td align=\"center\"><a href= \"tweeter.php?id=" .$line['usr_id']. "&page=".$curr_page. "\">"
				. "<img src=\"" . $line['profile_img_url'] 
				. "\" onerror=\"this.src='https://lh3.ggpht.com/lSLM0xhCA1RZOwaQcjhlwmsvaIQYaP3c5qbDKCgLALhydrgExnaSKZdGa8S3YtRuVA=w300';"
				. "\" height=\"100\" width = \"100\"></a></td>\n";
			if (0 == ($colCounter++ % 10) ) {
				echo "\t\t</tr>\n\t\t<tr>";
			}
			$picCounter++;
		}
	}
	echo "\t\t</tr>\n\t</table>\n";
		
	//photowall navigation links
	echo "\t<table id=\"picwall\">\n\t\t<tr>\n"
		."\t\t  <td align=\"left\">".(($curr_page >= 2)? "<br/><a href=\"photowall.php?page=" .($curr_page-1). "\"> Previous Page</a>" : " " ) . "</td>".
		"\n\t\t  <td align=\"right\"><br/><a href=\"photowall.php?page=" .($curr_page+1). "\">Next Page </a></td>\n"
		. "\t\t</tr>\n\t</table><br/><br/>\n";

	//free results and such	
	pg_free_result($user_info);
	pg_close($conn);
?>
	</center>
	
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="include/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>

<?php
 // Make sure private data is secured using HTTPS
        if ($_SERVER['HTTPS'] !== 'on') {
                $redirectURL = 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
                header("Location: $redirectURL");
                exit;
        }

	//Undo the changes we originally made to the data 
	//  when we pulled it from the stream into our DB
	//  (Clean up the strings to be properly formatted) 
	function sanitize($old_string)
	{
		$replace_these = array("::",";;");
		$insert_these = array("\"",'\'');
		$sanitized_string = str_replace($replace_these, $insert_these, $old_string);
		return $sanitized_string;
	}

	// Connect to the database
    include("../secure/database.php");
    $conn = pg_connect(HOST." ".DBNAME." ".USERNAME." ".PASSWORD) or die("Failed to connect to the database");

	//Get individual tweeter's info
	$tweeter = pg_prepare($conn, 'get-tweeter-info', "SELECT name, screen_name, description, followers, profile_img_url FROM twitStat.twit_user WHERE usr_id =$1;")
		or die("Failed to create username query");
	$tweeter = pg_execute($conn, 'get-tweeter-info', array($_GET['id']))
		or die("Failed to execute username query");
	if (pg_num_rows($tweeter) != 1 ) $tweeter_error = true; //There should never be two tweeters with the same usr_id
	$tweeter = pg_fetch_array($tweeter, null, PGSQL_ASSOC);

	//clean up each of these fields (by adding single and double quotes back in)
	$tweeter['description'] = sanitize($tweeter['description']);
	$tweeter['location'] = sanitize($tweeter['location']);
	$tweeter['profile_img_url'] = sanitize($tweeter['profile_img_url']);
	
	//get all of this user's tweets
	$tweets = pg_prepare($conn, 'get-user-tweets', "SELECT tweet FROM twitStat.tweets WHERE user_id = $1;") or die ("Failed to create a tweet query");
	$tweets = pg_execute($conn, 'get-user-tweets', array((int)$_GET['id'])) or die("Failed to execute tweet query");
	if (pg_num_rows($tweets) == 0) $no_tweets = true;
?>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="styles.css">
	<meta charset=UTF-8>
	<title>TwitStat - Tweeter</title>
</head>
<body>
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
</head>
<body>
	<?php include 'nav.php'; ?>
	<center>
	<font color="white">
		<!-- Table for an individual tweeter  -->
	<table id="tweeter" frame="border" rules="none" ><tr><td align="center">
	<h1><img align="middle" src= "<?= $tweeter['profile_img_url'] ?>" height="100" width="100" 
		onerror="this.src='https://lh3.ggpht.com/lSLM0xhCA1RZOwaQcjhlwmsvaIQYaP3c5qbDKCgLALhydrgExnaSKZdGa8S3YtRuVA=w300';" 
		style="border:5px solid cornflowerblue"/>
	 &nbsp &nbsp Tweeter: <?= $tweeter['name'] ?> </h1>
	<h4> <?php echo "\"" . $tweeter['screen_name'] . "\""; ?> </h4></td></tr>
	<tr><td align="center"><p><strong>Description:</strong><br/>
		<?php if ( ($tweeter['description'] == "null")  || is_null($tweeter['description']) || empty($tweeter['description']) )
			{
			  echo "No description for this tweeter.";
			}
			else 
			{
			  echo $tweeter['description'];
			} ?></p> </td></tr>
	<tr><td align="center"><p><strong>Location: </strong><?= $tweeter['location'] ?>
	<?php if (empty($tweeter['location'])) echo "Unlisted"; ?></p> </td></tr>
	<tr><td align="center"><p><strong>Followers: </strong><?= $tweeter['followers'] ?></p></td></tr><tr><td align="center">
<?php
	if ($no_tweets) echo "\t<p>Hmm...There aren't any tweets to display for this user.</p><br/>";
	else {
	  echo "\t<p><strong>Tweets:</strong><br/>\n" ; 
	  while ($line = pg_fetch_array($tweets, null, PGSQL_ASSOC) ) {
		echo "\t\"" . sanitize($line['tweet']) . "\"</p><br/>";
	  }
	} //end else
?>	</td></tr></table></font> <br/>
	<a href="photowall.php?page=<?= $_GET['page'] ?>">Return to Photo Wall</a>
<?php
	//close connections and such
	pg_free_result($tweeter);
	pg_free_result($tweets);
	pg_close($conn)
?>
	</center>
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="include/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>

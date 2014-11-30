<?php
	// Connect to the database
	//AGAIN, THIS WILL NEED TO BE CHANGED TO OUR GROUP DATABASE CREDENTIALS
        include("../../secure/database.php");
        $conn = pg_connect(HOST." ".DBNAME." ".USERNAME." ".PASSWORD) or die("Failed to connect to the database");

	$tweeter = pg_prepare($conn, 'get-tweeter-info', "SELECT name, screen_name, desription, followers, profile_img_url FROM twitStat.twit_user WHERE usr_id =$1;")
		or die("Failed to create username query");
	$tweeter = pg_execute($conn, 'get-tweeter-info', array($_GET['id']))
		or die("Failed to execute username query");
	if (pg_num_rows($tweeter) != 1 ) $tweeter_error = true;
	$tweeter = pg_fetch_array($tweeter, null, PGSQL_ASSOC);

	$tweets = pg_prepare($conn, 'get-user-tweets', "SELECT tweet FROM twitStat.tweets WHERE user_id = $1;") or die ("Failed to create a tweet query");
	$tweets = pg_execute($conn, 'get-user-tweets', array((int)$_GET['id'])) or die("Failed to execute tweet query");
	if (pg_num_rows($tweets) == 0) $no_tweets = true;
?>

<!DOCTYPE html>
<html>
<head>
	<title>TwitStat - Tweeter</title>
</head>
<body>
	<center>
<<<<<<< HEAD
	<h1>Tweeter: <?= $tweeter['name'] ?> </h1>
	<h4> <?php echo "\"" . $tweeter['screen_name'] . "\""; ?> </h4>
	<p><strong>Description:</strong><br/><?= $tweeter['desription'] ?></p> 
	<p><strong>Followers: </strong><?= $tweeter['followers'] ?></p>
	<img src= "<?= $tweeter['profile_img_url'] ?>" height="500" width="500" border="5"/><br/>
<?php
	if ($no_tweets) echo "\t<p>Hmm...There aren\'t any tweets to display for this user.</p>";
=======
	<font color="white">
	<table frame="border" rules="none" border="8" border-color="blue" bgcolor="cornflowerblue" style="width:65%" ><tr><td align="center">
	<h1><img align="middle" src= "<?= $tweeter['profile_img_url'] ?>" height="100" width="100" 
		onerror="this.src='https://lh3.ggpht.com/lSLM0xhCA1RZOwaQcjhlwmsvaIQYaP3c5qbDKCgLALhydrgExnaSKZdGa8S3YtRuVA=w300';" 
		style="border:5px solid white"/>
	 &nbsp &nbsp Tweeter: <?= $tweeter['name'] ?> </h1>
	<h4> <?php echo "\"" . $tweeter['screen_name'] . "\""; ?> </h4></td></tr>
	<tr><td align="center"><p><strong>Description:</strong><br/>
		<?php if ( ($tweeter['desription'] == "null")  || is_null($tweeter['desription']) || empty($tweeter['desription']) )
			{
			  echo "No description for this tweeter.";
			}
			else 
			{
			  echo $tweeter['desription'];
			} ?></p> </td></tr>
	<tr><td align="center"><p><strong>Location: </strong><?= $tweeter['location'] ?>
	<?php if (empty($tweeter['location'])) echo "Unlisted"; ?></p> </td></tr>
	<tr><td align="center"><p><strong>Followers: </strong><?= $tweeter['followers'] ?></p></td></tr><tr><td align="center">
<?php
	if ($no_tweets) echo "\t<p>Hmm...There aren\'t any tweets to display for this user.</p><br/>";
>>>>>>> origin/master
	else {
	  while ($line = pg_fetch_array($tweets, null, PGSQL_ASSOC) ) {
<<<<<<< HEAD
		echo "\t<p>\"" . $line['tweet'] . "\"</p><br/>";
=======
		echo "\t\"" . sanitize($line['tweet']) . "\"</p><br/>";
>>>>>>> origin/master
	  }
	} //end else
?>	</td></tr></table></font> <br/>
	<a href="photowall.php?page=<?= $_GET['page'] ?>">Return to Photo Wall</a>
<<<<<<< HEAD
	<br/><br/>
=======
	<?php
		//echo "\t<p>This is a test:</p>\n\t<p>" . $tweeter['profile_img_url'] . "</p>\n"; 
	?>
>>>>>>> origin/master
	</center>
</body>
</html>

<?php
	pg_free_result($tweeter);
	pg_free_result($tweets);
	pg_close($conn)
?>

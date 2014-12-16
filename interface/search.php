<!DOCTYPE html>
<html>
<head>
	<title>twitStat - Search</title>
	<link rel="stylesheet" type="text/css" href="styles.css">
	<link href="include/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- Bootstrap theme -->
	<link href="include/bootstrap/dist/css/bootstrap-theme.min.css" rel="stylesheet">
	<meta charset=UTF-8>
	<style>
		form {
			width: 400px;
			text-align: center;
			margin:auto;
		}
		td.b {
			text-align: center;
		}
		#bad {
			text-align: center;
			color: red;
		}
		.class {
			text-align:center;
		}
	</style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script>
function clickAction( id, user, lineNo ){
	console.log("click");
	if( user == "null" ){
		$('#bad').html("Need to Login First!");
		console.log("error!");
	}// end login check
	else{
		console.log("logged in!");
		var url = "https://babbage.cs.missouri.edu/~cs3380f14grp14/interface/addFav.php?action=add&id="+id+"&user="+user;
		console.log("url: "+url);
		$.get( url, function(data) {
			console.log("get! "+ data)
			$( "#form"+lineNo ).html("Added!");
		});// end get
	}
}// end click action function
	</script>
</head>
<body>
	<?php include 'nav.php'; ?>
<div id="bad"></div>
<form method="POST" action="<?= $_SERVER['PHP_SELF'] ?>"><fieldset>
	Seach by:
	<br>
	<label class="radio-inline">
		<input type="radio" name="search_by" value="name" checked />Profile Name
	</label>
	<label class="radio-inline">
	<input type="radio" name="search_by" value="usr_id" />User Id
	</label>
	<label class="radio-inline">
    <input type="radio" name="search_by" value="screen_name"  />Handle
	</label>
	<label class="radio-inline">
	<input type="radio" name="search_by" value="tweet"  />Tweet 
	</label>
	<br>
	<br>
    <input class="form-group" type="text" name="query_string" value="" />
    <input class="btn"type="submit" name="submit" value="Submit" />
</fieldset></form>
<center>
<?php
	session_start();
	 //Connecting to database
	 	include("util.php");
        include("../secure/database.php");
        $dbconn = pg_connect(HOST." ".DBNAME." ".USERNAME." ".PASSWORD)
        or die('Could not connect: ' . pg_last_error());

		$user = $_SESSION['login_user'];

		

	if(isset($_POST['submit'])){	
		$curr_page = $_GET['page'];
		if ($curr_page < 1 || empty($curr_page)) $curr_page = 1;
			//convert the prepared characters to HTML entities
			$searchterm = htmlspecialchars($_POST['query_string'] . '%');
	
		if($_POST['search_by']=='usr_id'){
			//creating query
			$usrQ = 'SELECT u.usr_id, u.name, u.screen_name, u.location, u.description, u.followers, u.friends, u.created_at, u.status_count, u.fav_count, u.lang
				FROM twitstat.twit_user as u 
				WHERE (u.usr_id ILIKE $1) 
				ORDER BY (u.screen_name)';
			//submit a request to create a prepared statement with given parameter
			$result = pg_prepare($dbconn, "usr_id_array", $usrQ) 
				or die ("bady query: ". pg_last_error());
			//send request to execute a prepared statement with given parameters, and wait for the result
			$result = pg_execute($dbconn, "usr_id_array", array($searchterm)) 
				or die ("wrong typing: ". pg_last_error());
			//print out the search result
			printTable($result, $user,0);
		}
		else if($_POST['search_by']=='name'){
			//create query
			$nameQ = 'SELECT u.usr_id, u.name, u.screen_name, u.location, u.description, u.followers, u.friends, u.created_at, u.status_count, u.fav_count, u.lang
				FROM twitstat.twit_user as u 
				WHERE (u.name ILIKE $1) 
				ORDER BY (u.screen_name)';
			//submit a request to create a prepared statement with given parameter
			$result = pg_prepare($dbconn, "name_lookup", $nameQ);
			 //send request to execute a prepared statement with given parameters, and wait for the result
			$result = pg_execute($dbconn, "name_lookup", array($searchterm))  or die ("wrong typing: ". pg_last_error());
			//print out the search result
			printTable($result, $user,0);
		}
		else if($_POST['search_by']=='screen_name'){
			//creating query
			$screenQ = 'SELECT u.usr_id, u.name, u.screen_name, u.location, u.description, u.followers, u.friends, u.created_at, u.status_count, u.fav_count, u.lang
				FROM twitstat.twit_user as u 
				WHERE (u.screen_name ILIKE $1) 
				ORDER BY (u.screen_name)';
			//submit a request to create a prepared statement with given parameter
			$result = pg_prepare($dbconn, "screen_name_lookup", $screenQ);
			 //send request to execute a prepared statement with given parameters, and wait for the result
			$result = pg_execute($dbconn, "screen_name_lookup", array($searchterm))  or die ("wrong typing: ". pg_last_error());
			//print out the search result
			printTable($result, $user,0);
		}
		//hide attribute which can be searched but not show up on the search webpage
		else if($_POST['search_by']=='location'){
			$result = pg_prepare($dbconn, "location_lookup", 'SELECT * FROM twit_user WHERE (twit_user.location ILIKE $1) ORDER BY (screen_name)');
			$result = pg_execute($dbconn, "location_lookup", array($searchterm))  or die ("wrong typing: ". pg_last_error());
			printTable($result, $user,0);
		}
		//hide attribute which can be searched but not show up on the webpage
		else if($_POST['search_by'] == 'description')
		{
			$result = pg_prepare($dbconn, "description_lookup", 'SELECT * FROM twitstat.twit_user WHERE (twit_user.description ILIKE $1) ORDER BY (screen_name)');
			$result = pg_execute($dbconn, "description_lookup", array($searchterm))  or die ("wrong typing: ". pg_last_error());
			printTable($result, $user,0);
		}
		//hide attribute which can be searched but not show up on the search webpage
		else if($_POST['search_by']=='followers'){
			$result = pg_prepare($dbconn, "followers_lookup", 'SELECT * FROM twitstat.twit_user WHERE (twit_user.followers ILIKE $1) ORDER BY (screen_name)');
			$result = pg_execute($dbconn, "followers_lookup", array($searchterm))  or die ("wrong typing: ". pg_last_error());
			printTable($result, $user,0);
		}
		//hide attribute which can be searched but not show up on the search webpage
		else if($_POST['search_by']=='status_count'){
			$result = pg_prepare($dbconn, "status_count_lookup", 'SELECT * FROM twitstat.twit_user WHERE (twit_user.status_count ILIKE $1) ORDER BY (screen_name)');
			$result = pg_execute($dbconn, "status_count_lookup", array($searchterm))  or die ("wrong typing: ". pg_last_error());
			printTable($result, $user,0);
		}
		//hide attribute which can be searched but not show up on the search webpage
		else if($_POST['search_by']=='fav_count'){
			$result = pg_prepare($dbconn, "fav_count_lookup", 'SELECT * FROM twitstat.twit_user WHERE (twit_user.fav_count ILIKE $1) ORDER BY (screen_name)');
			$result = pg_execute($dbconn, "fav_count_lookup", array($searchterm))  or die ("wrong typing: ". pg_last_error());
			printTable($result, $user,0);
		}
		//hide attribute which can be searched but not show up on the search webpage
		else if($_POST['search_by']=='lang'){
			$result = pg_prepare($dbconn, "lang_lookup", 'SELECT * FROM twitstat.twit_user WHERE (twit_user.lang ILIKE $1) ORDER BY (screen_name)');
			$result = pg_execute($dbconn, "lang_lookup", array($searchterm))  or die ("wrong typing: ". pg_last_error());
			printTable($result, $user,0);
		}
		else if($_POST['search_by']=='tweet'){
			//creating query 
			$tQ = 'SELECT t.id, t.tweet, t.source, t.user_id, u.screen_name 
				FROM twitstat.tweets as t 
				inner join twitstat.twit_user as u
				on u.usr_id = t.user_id
				WHERE (t.tweet ILIKE $1) ORDER BY (tweet)';
			//submit a request to create a prepared statement with given parameter
			$result = pg_prepare($dbconn, "tweet_lookup", $tQ)
				or die ("tweet prep fail: ". pg_last_error());
			//send request to execute a prepared statement with given parameters, and wait for the result
			$result = pg_execute($dbconn, "tweet_lookup", array($searchterm))  
				or die ("tweet ex fail: ". pg_last_error());
			//print out search result
			printTable($result, $user,1);


		}
		
	}// end isset
?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="include/bootstrap/dist/js/bootstrap.min.js"></script>
   
</body>
</html>


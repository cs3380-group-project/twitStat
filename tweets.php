<html>
<head>
<title>CS3380 Group Project</title>
</head>
<body>
<form method="POST" action="<?= $_SERVER['PHP_SELF'] ?>">
	Search for a :
	<input type="radio" name="search_by" value="usr_id" />Usr_id
	<input type="radio" name="search_by" value="name"  />Name
    <input type="radio" name="search_by" value="screen_name"  />Screen_name
	<input type="radio" name="search_by" value="location"  />Location
	<input type="radio" name="search_by" value="id"  />Id 
	<input type="radio" name="search_by" value="tweet"  />Tweet 
	<input type="radio" name="search by" value="description" />description
    <input type="radio" name="search by" value="followers" />followers
	<input type="radio" name="search by" value="status_count" />status_count
    <input type="radio" name="search by" value="fav_count" />fav_count <br /><br />	
    That begins with: <input type="text" name="query_string" value="" /> <br /><br />
    <input type="submit" name="submit" value="Submit" />
</form>

<?php

	 //Connecting to database
        include("../../secure/database.php");
        $dbconn = pg_connect(HOST." ".DBNAME." ".USERNAME." ".PASSWORD)
        or die('Could not connect: ' . pg_last_error());


	if(isset($_POST['submit'])){	
		$searchterm = htmlspecialchars($_POST['query_string'] . '%');
	
		if($_POST['search_by']=='usr_id'){
			$result = pg_prepare($dbconn, "usr_id_lookup", 'SELECT * FROM twit_user
			WHERE (twit_user.name ILIKE $1) ORDER BY (name)');
			$result = pg_execute($dbconn, "usr_id_lookup", array($searchterm))  or die ("wrong typing: ". pg_last_error());
			echo "<br><br>\n\tThere are " . pg_num_rows($result) . " rows returned.\n</br>\n</br>";
			echo "<table border= '1'>\n";
			echo "<tr>
					<th>usr_id</th>
					<th>name</th>
					<th>screen_name</th>
					<th>location</th>
					<th>description</th>
					<th>followers</th>
					<th>friends</th>
					<th>created_at</th>
					<th>status_count</th>
					<th>fav_count</th>
					<th>lang</th>
					<th>profile_img_url</th>
					<th>default_img</th>
				</tr></form>";
			while ($row = pg_fetch_array($result,null,PGSQL_ASSOC)) {
				echo "\t<tr>\n";
			
				echo "	
					<td>" . $row['usr_id'] . "</td>
					<td>" . $row['name'] . "</td>
					<td>" . $row['screen_name'] . "</td>
					<td>" . $row['location'] . "</td>
					<td>" . $row['description'] . "</td>
					<td>" . $row['followers'] . "</td>
					<td>" . $row['friends'] . "</td>
					<td>" . $row['created_at'] . "</td>
					<td>" . $row['status_count'] . "</td>
					<td>" . $row['fav_count'] . "</td>	
					<td>" . $row['lang'] . "</td>
					<td>" . $row['profile_img_url'] . "</td>
					<td>" . $row['default_img'] . "</td>
					\t</tr>\n";		
			}
			echo "</table> ";
		}
		
		if($_POST['search_by']=='name'){
			$result = pg_prepare($dbconn, "name_lookup", 'SELECT * FROM twit_user 
			WHERE (twit_user.name ILIKE $1) ORDER BY (name)');
			$result = pg_execute($dbconn, "name_lookup", array($searchterm))  or die ("wrong typing: ". pg_last_error());
			echo "<br><br>\n\tThere are " . pg_num_rows($result) . " rows returned.\n</br>\n</br>";
			echo "<table border= '1'>\n";
			echo "<tr>
					<th>usr_id</th>
					<th>name</th>
					<th>screen_name</th>
					<th>location</th>
					<th>description</th>
					<th>followers</th>
					<th>friends</th>
					<th>created_at</th>
					<th>status_count</th>
					<th>fav_count</th>
					<th>lang</th>
					<th>profile_img_url</th>
					<th>default_img</th>
				</tr></form>";
			while ($row = pg_fetch_array($result,null,PGSQL_ASSOC)) {
				echo "\t<tr>\n";
			
				echo "	
					<td>" . $row['usr_id'] . "</td>
					<td>" . $row['name'] . "</td>
					<td>" . $row['screen_name'] . "</td>
					<td>" . $row['location'] . "</td>
					<td>" . $row['description'] . "</td>
					<td>" . $row['followers'] . "</td>
					<td>" . $row['friends'] . "</td>
					<td>" . $row['created_at'] . "</td>
					<td>" . $row['status_count'] . "</td>
					<td>" . $row['fav_count'] . "</td>	
					<td>" . $row['lang'] . "</td>
					<td>" . $row['profile_img_url'] . "</td>
					<td>" . $row['default_img'] . "</td>
					\t</tr>\n";		
			}
			echo "</table> ";
		}
		
		if($_POST['search_by']=='screen_name'){
			$result = pg_prepare($dbconn, "screen_name_lookup", 'SELECT * FROM twit_user 
			WHERE (twit_user.name ILIKE $1) ORDER BY (name)');
			$result = pg_execute($dbconn, "screen_name_lookup", array($searchterm))  or die ("wrong typing: ". pg_last_error());
			echo "<br><br>\n\tThere are " . pg_num_rows($result) . " rows returned.\n</br>\n</br>";
			echo "<table border= '1'>\n";
			echo "<tr>
					<th>usr_id</th>
					<th>name</th>
					<th>screen_name</th>
					<th>location</th>
					<th>description</th>
					<th>followers</th>
					<th>friends</th>
					<th>created_at</th>
					<th>status_count</th>
					<th>fav_count</th>
					<th>lang</th>
					<th>profile_img_url</th>
					<th>default_img</th>
				</tr></form>";
			while ($row = pg_fetch_array($result,null,PGSQL_ASSOC)) {
				echo "\t<tr>\n";
			
				echo "	
					<td>" . $row['usr_id'] . "</td>
					<td>" . $row['name'] . "</td>
					<td>" . $row['screen_name'] . "</td>
					<td>" . $row['location'] . "</td>
					<td>" . $row['description'] . "</td>
					<td>" . $row['followers'] . "</td>
					<td>" . $row['friends'] . "</td>
					<td>" . $row['created_at'] . "</td>
					<td>" . $row['status_count'] . "</td>
					<td>" . $row['fav_count'] . "</td>	
					<td>" . $row['lang'] . "</td>
					<td>" . $row['profile_img_url'] . "</td>
					<td>" . $row['default_img'] . "</td>
					\t</tr>\n";		
			}
			echo "</table> ";
		}
		
		if($_POST['search_by']=='location'){
			$result = pg_prepare($dbconn, "location_lookup", 'SELECT * FROM twit_user
			WHERE (twit_user.name ILIKE $1) ORDER BY (name)');
			$result = pg_execute($dbconn, "location_lookup", array($searchterm))  or die ("wrong typing: ". pg_last_error());
			echo "<br><br>\n\tThere are " . pg_num_rows($result) . " rows returned.\n</br>\n</br>";
			echo "<table border= '1'>\n";
			echo "<tr>
					<th>usr_id</th>
					<th>name</th>
					<th>screen_name</th>
					<th>location</th>
					<th>description</th>
					<th>followers</th>
					<th>friends</th>
					<th>created_at</th>
					<th>status_count</th>
					<th>fav_count</th>
					<th>lang</th>
					<th>profile_img_url</th>
					<th>default_img</th>
				</tr></form>";
			while ($row = pg_fetch_array($result,null,PGSQL_ASSOC)) {
				echo "\t<tr>\n";
			
				echo "	
					<td>" . $row['usr_id'] . "</td>
					<td>" . $row['name'] . "</td>
					<td>" . $row['screen_name'] . "</td>
					<td>" . $row['location'] . "</td>
					<td>" . $row['description'] . "</td>
					<td>" . $row['followers'] . "</td>
					<td>" . $row['friends'] . "</td>
					<td>" . $row['created_at'] . "</td>
					<td>" . $row['status_count'] . "</td>
					<td>" . $row['fav_count'] . "</td>	
					<td>" . $row['lang'] . "</td>
					<td>" . $row['profile_img_url'] . "</td>
					<td>" . $row['default_img'] . "</td>
					\t</tr>\n";		
			}
			echo "</table> ";
		}
		
		if($_POST('search_by' == 'description')
		{
			$result = pg_prepare($dbconn, "description_lookup", 'SELECT * FROM twit_user
			WHERE (twit_user.name ILIKE $1) ORDER BY (name)');
			$result = pg_execute($dbconn, "description_lookup", array($searchterm))  or die ("wrong typing: ". pg_last_error());
			echo "<br><br>\n\tThere are " . pg_num_rows($result) . " rows returned.\n</br>\n</br>";
			echo "<table border= '1'>\n";
			echo "<tr>
					<th>usr_id</th>
					<th>name</th>
					<th>screen_name</th>
					<th>location</th>
					<th>description</th>
					<th>followers</th>
					<th>friends</th>
					<th>created_at</th>
					<th>status_count</th>
					<th>fav_count</th>
					<th>lang</th>
					<th>profile_img_url</th>
					<th>default_img</th>
				</tr></form>";
			while ($row = pg_fetch_array($result,null,PGSQL_ASSOC)) {
				echo "\t<tr>\n";
			
				echo "	
					<td>" . $row['usr_id'] . "</td>
					<td>" . $row['name'] . "</td>
					<td>" . $row['screen_name'] . "</td>
					<td>" . $row['location'] . "</td>
					<td>" . $row['description'] . "</td>
					<td>" . $row['followers'] . "</td>
					<td>" . $row['friends'] . "</td>
					<td>" . $row['created_at'] . "</td>
					<td>" . $row['status_count'] . "</td>
					<td>" . $row['fav_count'] . "</td>	
					<td>" . $row['lang'] . "</td>
					<td>" . $row['profile_img_url'] . "</td>
					<td>" . $row['default_img'] . "</td>
					\t</tr>\n";		
			}
			echo "</table> ";
		}
		
		if($_POST['search_by']=='followers'){
			$result = pg_prepare($dbconn, "created_at_lookup", 'SELECT * FROM twit_user
			WHERE (twit_user.name ILIKE $1) ORDER BY (name)');
			$result = pg_execute($dbconn, "created_at_lookup", array($searchterm))  or die ("wrong typing: ". pg_last_error());
			echo "<br><br>\n\tThere are " . pg_num_rows($result) . " rows returned.\n</br>\n</br>";
			echo "<table border= '1'>\n";
			echo "<tr>
					<th>usr_id</th>
					<th>name</th>
					<th>screen_name</th>
					<th>location</th>
					<th>description</th>
					<th>followers</th>
					<th>friends</th>
					<th>created_at</th>
					<th>status_count</th>
					<th>fav_count</th>
					<th>lang</th>
					<th>profile_img_url</th>
					<th>default_img</th>
				</tr></form>";
			while ($row = pg_fetch_array($result,null,PGSQL_ASSOC)) {
				echo "\t<tr>\n";
			
				echo "	
					<td>" . $row['usr_id'] . "</td>
					<td>" . $row['name'] . "</td>
					<td>" . $row['screen_name'] . "</td>
					<td>" . $row['location'] . "</td>
					<td>" . $row['description'] . "</td>
					<td>" . $row['followers'] . "</td>
					<td>" . $row['friends'] . "</td>
					<td>" . $row['created_at'] . "</td>
					<td>" . $row['status_count'] . "</td>
					<td>" . $row['fav_count'] . "</td>	
					<td>" . $row['lang'] . "</td>
					<td>" . $row['profile_img_url'] . "</td>
					<td>" . $row['default_img'] . "</td>
					\t</tr>\n";		
			}
			echo "</table> ";
		}
		
		if($_POST['search_by']=='status_count'){
			$result = pg_prepare($dbconn, "status_count_lookup", 'SELECT * FROM twit_user
			WHERE (twit_user.name ILIKE $1) ORDER BY (name)');
			$result = pg_execute($dbconn, "status_count_lookup", array($searchterm))  or die ("wrong typing: ". pg_last_error());
			echo "<br><br>\n\tThere are " . pg_num_rows($result) . " rows returned.\n</br>\n</br>";
			echo "<table border= '1'>\n";
			echo "<tr>
					<th>usr_id</th>
					<th>name</th>
					<th>screen_name</th>
					<th>location</th>
					<th>description</th>
					<th>followers</th>
					<th>friends</th>
					<th>created_at</th>
					<th>status_count</th>
					<th>fav_count</th>
					<th>lang</th>
					<th>profile_img_url</th>
					<th>default_img</th>
				</tr></form>";
			while ($row = pg_fetch_array($result,null,PGSQL_ASSOC)) {
				echo "\t<tr>\n";
			
				echo "	
					<td>" . $row['usr_id'] . "</td>
					<td>" . $row['name'] . "</td>
					<td>" . $row['screen_name'] . "</td>
					<td>" . $row['location'] . "</td>
					<td>" . $row['description'] . "</td>
					<td>" . $row['followers'] . "</td>
					<td>" . $row['friends'] . "</td>
					<td>" . $row['created_at'] . "</td>
					<td>" . $row['status_count'] . "</td>
					<td>" . $row['fav_count'] . "</td>	
					<td>" . $row['lang'] . "</td>
					<td>" . $row['profile_img_url'] . "</td>
					<td>" . $row['default_img'] . "</td>
					\t</tr>\n";		
			}
			echo "</table> ";
		}
		
		if($_POST['search_by']=='fav_count'){
			$result = pg_prepare($dbconn, "fav_count_lookup", 'SELECT * FROM twit_user
			WHERE (twit_user.name ILIKE $1) ORDER BY (name)');
			$result = pg_execute($dbconn, "fav_count_lookup", array($searchterm))  or die ("wrong typing: ". pg_last_error());
			echo "<br><br>\n\tThere are " . pg_num_rows($result) . " rows returned.\n</br>\n</br>";
			echo "<table border= '1'>\n";
			echo "<tr>
					<th>usr_id</th>
					<th>name</th>
					<th>screen_name</th>
					<th>location</th>
					<th>description</th>
					<th>followers</th>
					<th>friends</th>
					<th>created_at</th>
					<th>status_count</th>
					<th>fav_count</th>
					<th>lang</th>
					<th>profile_img_url</th>
					<th>default_img</th>
				</tr></form>";
			while ($row = pg_fetch_array($result,null,PGSQL_ASSOC)) {
				echo "\t<tr>\n";
			
				echo "	
					<td>" . $row['usr_id'] . "</td>
					<td>" . $row['name'] . "</td>
					<td>" . $row['screen_name'] . "</td>
					<td>" . $row['location'] . "</td>
					<td>" . $row['description'] . "</td>
					<td>" . $row['followers'] . "</td>
					<td>" . $row['friends'] . "</td>
					<td>" . $row['created_at'] . "</td>
					<td>" . $row['status_count'] . "</td>
					<td>" . $row['fav_count'] . "</td>	
					<td>" . $row['lang'] . "</td>
					<td>" . $row['profile_img_url'] . "</td>
					<td>" . $row['default_img'] . "</td>
					\t</tr>\n";		
			}
			echo "</table> ";
		}
		
		if($_POST['search_by']=='lang'){
			$result = pg_prepare($dbconn, "lang_lookup", 'SELECT * FROM twit_user
			WHERE (twit_user.name ILIKE $1) ORDER BY (name)');
			$result = pg_execute($dbconn, "lang_lookup", array($searchterm))  or die ("wrong typing: ". pg_last_error());
			echo "<br><br>\n\tThere are " . pg_num_rows($result) . " rows returned.\n</br>\n</br>";
			echo "<table border= '1'>\n";
			echo "<tr>
					<th>usr_id</th>
					<th>name</th>
					<th>screen_name</th>
					<th>location</th>
					<th>description</th>
					<th>followers</th>
					<th>friends</th>
					<th>created_at</th>
					<th>status_count</th>
					<th>fav_count</th>
					<th>lang</th>
					<th>profile_img_url</th>
					<th>default_img</th>
				</tr></form>";
			while ($row = pg_fetch_array($result,null,PGSQL_ASSOC)) {
				echo "\t<tr>\n";
			
				echo "	
					<td>" . $row['usr_id'] . "</td>
					<td>" . $row['name'] . "</td>
					<td>" . $row['screen_name'] . "</td>
					<td>" . $row['location'] . "</td>
					<td>" . $row['description'] . "</td>
					<td>" . $row['followers'] . "</td>
					<td>" . $row['friends'] . "</td>
					<td>" . $row['created_at'] . "</td>
					<td>" . $row['status_count'] . "</td>
					<td>" . $row['fav_count'] . "</td>	
					<td>" . $row['lang'] . "</td>
					<td>" . $row['profile_img_url'] . "</td>
					<td>" . $row['default_img'] . "</td>
					\t</tr>\n";		
			}
			echo "</table> ";
		}
		
		if($_POST['search_by']=='profile_img_url'){
			$result = pg_prepare($dbconn, "profile_img_url_lookup", 'SELECT * FROM twit_user
			WHERE (twit_user.name ILIKE $1) ORDER BY (name)');
			$result = pg_execute($dbconn, "profile_img_url_lookup", array($searchterm))  or die ("wrong typing: ". pg_last_error());
			echo "<br><br>\n\tThere are " . pg_num_rows($result) . " rows returned.\n</br>\n</br>";
			echo "<table border= '1'>\n";
			echo "<tr>
					<th>usr_id</th>
					<th>name</th>
					<th>screen_name</th>
					<th>location</th>
					<th>description</th>
					<th>followers</th>
					<th>friends</th>
					<th>created_at</th>
					<th>status_count</th>
					<th>fav_count</th>
					<th>lang</th>
					<th>profile_img_url</th>
					<th>default_img</th>
				</tr></form>";
			while ($row = pg_fetch_array($result,null,PGSQL_ASSOC)) {
				echo "\t<tr>\n";
			
				echo "	
					<td>" . $row['usr_id'] . "</td>
					<td>" . $row['name'] . "</td>
					<td>" . $row['screen_name'] . "</td>
					<td>" . $row['location'] . "</td>
					<td>" . $row['description'] . "</td>
					<td>" . $row['followers'] . "</td>
					<td>" . $row['friends'] . "</td>
					<td>" . $row['created_at'] . "</td>
					<td>" . $row['status_count'] . "</td>
					<td>" . $row['fav_count'] . "</td>	
					<td>" . $row['lang'] . "</td>
					<td>" . $row['profile_img_url'] . "</td>
					<td>" . $row['default_img'] . "</td>
					\t</tr>\n";		
			}
			echo "</table> ";
		}
		
		if($_POST['search_by']=='id'){
			$result = pg_prepare($dbconn, "id_lookup", 'SELECT * FROM tweets
			WHERE (tweets.id ILIKE $1) ORDER BY (id)');
			$result = pg_execute($dbconn, "id_lookup", array($searchterm))  or die ("wrong typing: ". pg_last_error());
			echo "<br><br>\n\tThere are " . pg_num_rows($result) . " rows returned.\n</br>\n</br>";
			echo "<table border= '1'>\n";
			echo "<tr>
					<th>id</th>
					<th>tweet</th>
					<th>source</th>
					<th>user_id</th>
				</tr></form>";
			while ($row = pg_fetch_array($result,null,PGSQL_ASSOC)) {
				echo "\t<tr>\n";
			
				echo "	
					<th>id</th>
					<th>tweet</th>
					<th>source</th>
					<th>user_id</th>
					\t</tr>\n";		
			}
			echo "</table> ";
		}
		
		if($_POST['search_by']=='tweet'){
			$result = pg_prepare($dbconn, "tweet_lookup", 'SELECT * FROM tweets 
			WHERE (tweets.id ILIKE $1) ORDER BY (id)');
			$result = pg_execute($dbconn, "tweet_lookup", array($searchterm))  or die ("wrong typing: ". pg_last_error());
			echo "<br><br>\n\tThere are " . pg_num_rows($result) . " rows returned.\n</br>\n</br>";
			echo "<table border= '1'>\n";
			echo "<tr>
					<th>id</th>
					<th>tweet</th>
					<th>source</th>
					<th>user_id</th>
				</tr></form>";
			while ($row = pg_fetch_array($result,null,PGSQL_ASSOC)) {
				echo "\t<tr>\n";
			
				echo "	
					<th>id</th>
					<th>tweet</th>
					<th>source</th>
					<th>user_id</th>
					\t</tr>\n";		
			}
			echo "</table> ";
		}
		
		if($_POST['search_by']=='source'){
			$result = pg_prepare($dbconn, "source_lookup", 'SELECT * FROM tweets 
			WHERE (tweets.id ILIKE $1) ORDER BY (id)');
			$result = pg_execute($dbconn, "source_lookup", array($searchterm))  or die ("wrong typing: ". pg_last_error());
			echo "<br><br>\n\tThere are " . pg_num_rows($result) . " rows returned.\n</br>\n</br>";
			echo "<table border= '1'>\n";
			echo "<tr>
					<th>id</th>
					<th>tweet</th>
					<th>source</th>
					<th>user_id</th>
				</tr></form>";
			while ($row = pg_fetch_array($result,null,PGSQL_ASSOC)) {
				echo "\t<tr>\n";
			
				echo "	
					<th>id</th>
					<th>tweet</th>
					<th>source</th>
					<th>user_id</th>
					\t</tr>\n";		
			}
			echo "</table> ";
		}
		
		if($_POST['search_by']=='user_id'){
			$result = pg_prepare($dbconn, "user_id_lookup", 'SELECT * FROM tweets 
			WHERE (tweets.id ILIKE $1) ORDER BY (id)');
			$result = pg_execute($dbconn, "user_id_lookup", array($searchterm))  or die ("wrong typing: ". pg_last_error());
			echo "<br><br>\n\tThere are " . pg_num_rows($result) . " rows returned.\n</br>\n</br>";
			echo "<table border= '1'>\n";
			echo "<tr>
					<th>id</th>
					<th>tweet</th>
					<th>source</th>
					<th>user_id</th>
				</tr></form>";
			while ($row = pg_fetch_array($result,null,PGSQL_ASSOC)) {
				echo "\t<tr>\n";
			
				echo "	
					<th>id</th>
					<th>tweet</th>
					<th>source</th>
					<th>user_id</th>
					\t</tr>\n";		
			}
			echo "</table> ";
		}
}

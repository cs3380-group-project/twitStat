<?php
session_start();
 // Make sure private data is secured using HTTPS
        if ($_SERVER['HTTPS'] !== 'on') {
                $redirectURL = 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
                header("Location: $redirectURL");
                exit;
        }
/*
 *	misc. functions
 */
 
 
/*
 *	Print out search results in table
 */
function printTable($result, $user, $typeTweet){
/*	echo "<br><br>\n\tThere are " . pg_num_rows($result) . " results.\n</br>\n</br>";
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
		</tr>";
*/
	$user = htmlspecialchars($user);
	//echo "type-tweet ".$typeTweet;
	echo '<div id="mainTable"><br>',"\n";
	echo "There were <i>", pg_num_rows($result), "</i> rows returned<br><br>\n\n";
	echo '<table border ="1">'; 
	echo"\n\t<tr>";
	if( $typeTweet == 1 ){
		echo "\n\t\t<td> Actions </td>";			// add actions feild to top row
	}
	$i = pg_num_fields($result);
	for ($j = 0; $j < $i; $j++) {
		$fieldname = pg_field_name($result, $j);
		echo "\n\t\t<td><b> $fieldname </b></td>";
	}
	echo "\n\t</tr>";
	$lineCount = 0;
	while ($line = pg_fetch_array($result, null, PGSQL_NUM)) { 
		/*
		 *	create add to fav for each row
		 */
		echo "\n\t<tr>";
		
		if( $typeTweet == 1 ){
			if (alreadyFav( $line[0] , $user, $lineCount ) == 0){
				echo"\n\t\t<td>\n\t\t\t<div id='form".$lineCount."'>";
				echo "\n\t\t\t\t<button class=\"addButt\" type=\"submit\" name=\"action\" value=\"add to favorites\" onclick=\"clickAction('". $line[0] . "', '". $user . "', '". $lineCount ."')\">Add to Favorites</button>";
				echo "\n\t\t\t</div>\n\t\t</td>\n";
			}
			else{
				echo "\n\t\t<td>Favorited</td>\n";
			}
		}// end type tweet check
		$lineCount++;
		/*
		 *	print out the rest of the query
		 */
		 $tempCnt=0;
		foreach ($line as $col_value) {
		
			/*
			 * during database build process, ' was replaced with ;; and " was replaced with ::
			 * now need to swap these guys back
			 */
			if($typeTweet == 1 && $tempCnt<5){		// first check if printing out a Tweet table
				if( $tempCnt == 1 ){
					$tempTweet = $col_value;
					$tempTweet = str_replace( array(";;"), "'", $tempTweet  );
					$tempTweet = str_replace( array("::"), "\"", $tempTweet  );
					echo "\t\t<td>$tempTweet</td>\n";
				}
				else if($tempCnt==2){		// need to format source
					$pattern = '/<(.*?)>/';
					$replace = ' ';
					$tempSrc = $col_value;
					$tempSrc = preg_replace( $pattern, $replace, $tempSrc );
					echo "\t\t<td>$tempSrc</td>\n";
				}
				else	echo "\t\t<td>$col_value</td>\n";
				$tempCnt+=1;
			}// end tweet type check
			else if( $typeTweet == 0 ){			// then check if printing out an everything else table (table that isn't a tweet)
				if( $tempCnt == 4  ){
					$tempDsc = $col_value;
					$tempDsc = str_replace( array(";;"), "'", $tempDsc  );
					$tempDsc = str_replace( array("::"), "\"", $tempDsc  );
					echo "\t\t<td>$tempDsc</td>\n";
				}
				else if( $tempCnt == 3  ){
					$tempLoc = $col_value;
					$tempLoc = str_replace( array(";;"), "'", $tempLoc );
					$tempLoc = str_replace( array("::"), "\"", $tempLoc  );
					echo "\t\t<td>$tempLoc</td>\n";
				}
				else
					echo "\t\t<td>$col_value</td>\n";
				$tempCnt++;
			}// end everything else type check
			else{
				$tempCnt = 0;
			}
		} 
		echo "\t</tr>\n";
	} 
	echo "</table></div>\n";

}// end printTable

/*
 *	to check if a favorite has already been made by the user...
 */
function alreadyFav($id, $user, $i){

	include("../secure/database.php");
	$conn = pg_connect(HOST." ".DBNAME." ".USERNAME." ".PASSWORD)
		or die('Could not connect: ' . pg_last_error());

	$alreadyFav = "select * from twitstat.favorites as f where (f.username = $2) and (f.tweetid = $1)";
	$qtype = "checkFav".$i;
	$r = pg_prepare($conn, $qtype, $alreadyFav) or die ("fav check prep fail: ". pg_last_error());
	$r = pg_execute($conn, $qtype, array($id, $user)) or die ("fav check fail: ". pg_last_error());
	$linecount = pg_num_rows($r);
	
	pg_free_result($r);
	
	return $linecount;
}
?>


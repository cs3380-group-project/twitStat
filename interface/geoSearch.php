<?php
/*
 *	geo search, take in search type and query, return matching geo-tweets to map.
 */
include("../secure/database.php");
$conn = pg_connect(HOST." ".DBNAME." ".USERNAME." ".PASSWORD)		// connect to database, referencing info from secure folder
	or die('Could not connect: ' . pg_last_error());
 /*
  *	first get parameters from url
  */
 $search = htmlspecialchars( $_GET['search'] );
 $q = htmlspecialchars( $_GET['query'] );
 $input_clean = htmlspecialchars( $q.'%');	
// echo "search: ".$search." - query: ".$q;
 /*
  * check that parameters are valid, search type must be either tweet or username, query cannot be null
  * ...then begin processing...
  */
if( ( $search == 'tweet' || $search == 'username' ) && !is_null($q) ){
//	$input_clean = htmlspecialchars($q.'');	// append '%' to query statement
	/*
	 *	Build sql query based on input
	 */
	$type = '';
	$psql = '';
	if( $search == 'tweet' )	{
		$type = "tweet";
		$psql = "select u.usr_id, u.name, u.screen_name, u.lang, t.tweet, g.latitude, g.longitude
				from twitStat.twit_user as u
				inner join twitStat.tweets as t
				on t.user_id=u.usr_id
				inner join twitStat.geo as g
				on t.id=g.id
				where ( t.tweet ilike $1 );";
	}// end if 'tweet'
	else if( $search == 'username' ){;
		$type = "username";
		$psql = "select u.usr_id, u.name, u.screen_name, u.lang, t.tweet, g.latitude, g.longitude
				from twitStat.twit_user as u
				inner join twitStat.tweets as t
				on t.user_id=u.usr_id
				inner join twitStat.geo as g
				on t.id=g.id
				where ( u.screen_name ilike $1 );";
	}// end if username
	/*
	 * excecute queries
	 */
	$result = pg_prepare($conn, $type, $psql )							// put prepared statements together
		or die('Prepare failed: ' . pg_last_error());
	$result = pg_execute($conn, $type, array( $input_clean ) )				// execute statements
		or die('execute failed: ' . pg_last_error());

	/*
	 * Now need to throw results into json
	*/

	$numFields = pg_num_fields($result);
//	echo "num fields... ".$numFields;
	$titles = array("user_id", "user_name", "screen_name", "language", "tweet", "lat", "long");	// titles to be used in key value pairs
	$data = array();				// return array to hold data
	$c = 0;							// counter variable, to be used to track which title to use
	
	for( $i; $i < $numFields; $i++){		//cycle through all table results
		$fetch = array();
		$temp = array();
		$fetch = pg_fetch_row( $result, $i );	// grab individual row
		
		foreach( $fetch as $val ){				// cycle through every entry
			if( !is_null($val) ){
//			echo " == ".$val;
				$temp[$titles[ $c ]] = $val;		// add to new return array
				$c++;
				if( $c > 6 ){						// check and see if title needs to be reset
					$c = 0;
				}
			}	
		}
		array_push($data, $temp);				// add temp to bigger return array
	}// end for loop
	
	/*
	 *	Finally return data as json
	 */	
	
	header('Content-type: application/json');
	echo json_encode( $data );							// encode array, return
}// end main processing...


?>

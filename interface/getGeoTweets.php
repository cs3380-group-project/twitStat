
<?php
/**
 * generate random sample of geo-tweets, return them as json
 */

include("../secure/database.php");
	$conn = pg_connect(HOST." ".DBNAME." ".USERNAME." ".PASSWORD) or die("Failed to connect to the database");

	/*
	 * First need to generate 50 random geo tweets
	*/

	$q = "select u.usr_id, u.name, u.screen_name, u.lang, t.tweet, g.latitude, g.longitude
			from twitStat.twit_user as u
			inner join twitStat.tweets as t
			on t.user_id=u.usr_id
			inner join twitStat.geo as g
			on t.id=g.id
			order by random() limit 500;";

	$result = pg_query($q) or die('Query failed: ' . pg_last_error());
	
	
	/*
	 * Now need to throw results into json
	*/ 
	$titles = array("user_id", "user_name", "screen_name", "language", "tweet", "lat", "long");	// titles to be used in key value pairs
	$data = array();
	$c = 0;							// counter variable, to be used to track whic title to use
	
	for( $i=0; $i < 500; $i++){		//cycle through all table results
		$fetch = array();
		$temp = array();
		$fetch = pg_fetch_row( $result, $i );	// grab individual row
		foreach( $fetch as $val ){				// cycle through every entry
			$temp[$titles[ $c ]] = $val;		// add to new return array
			$c++;
			if( $c > 6 ){						// check and see if title needs to be reset
				$c = 0;
			}
		}
		array_push($data, $temp);				// add temp to bigger return array
	}
	/*
	while ($line = pg_fetch_array($result, null, PGSQL_NUM)) { 		// loop through returned lines
		$temp = array(); 
		foreach ($line as $col_value) { 								// loop through returned cols in the line
			//array_push($temp, $col_value);
			//$temp = array_merge( $temp, array($col_value)  );
			//echo $col_value;
			
			$temp[$titles[$titlecount]] = $line;
			
			$titlecount++;
			if( $titlecount > 6 ){
				$titlecount = 0;
			}
		}
//		print_r($temp);
		array_push($data, $temp);
//		unset($data);
	}*/
//	print_r($data);
//	echo $data;	
	

	/*
	 *	set headers to return json...
	*/
	header('Content-type: application/json');
	echo json_encode( $data );							// encode array, return

?>

/*
 * populate the map wit random icons...
 */
 
 /*
  * first need to make AJAX call and get random 50 tweets as json object...
  */
$( document ).ready( function(){
	var datlength;
	options = {
		"content": "data",
		"format": "json"
	};
	$.get("http://babbage.cs.missouri.edu/~cs3380f14grp14/interface/getGeoTweets.php", options, function(data) {
	//	$('#contentBox').html("<ul>");
		datlength = data.length;
		for( var i = 0 ; i< datlength; i++ ){	// loop through JSON data
	//		$('#contentBox').append("<li>" + data3[i].name +" lived during the "+ data3[i].period +" period.</li>");
			var subjson = data[i];	
			var people = [];			// array to hold all people
			var infoWindows = []; 	// array for holding all windows
			var peopleCont = [];		// array for people info
			var tempStr;
			var raw = [];

			tempStr = '<div id="content"><div id="body_content">';
			tempStr = '<div id="content"><div id="body_content">';
			for( var j = 0; j < 6; j++ ){	// need to loop through the second layer of arrays
				raw[raw.length] = subjson[j];
				tempStr = '<p>'+ subjson[j] +'</p>';
			}
			tempStr = tempStr.concat('</div></div>')
			peopleCont[peopleCont.length] = tempStr;			// append individual person's data to whole array
		
			people[people.length] = new google.maps.LatLng( subjson[5], subjson[6] );		// create pin for user
			infoWindows[ infoWindows.length ] = new google.maps.InfoWindow();				// create info window for user
		}	
	
	
	
	//		$('#contentBox').append("</ul>");
	});

	/*
	 * now need to take loaded info and place onto map
	 */

	var markers = [];
	for( var k = 0; k<datlength; k++){		// loop through every tweet	
		markers[ markers.length ] = new google.maps.Marker({		// create window event
        	animation:google.maps.Animation.DROP,
        	position:people[k],
      	});
    	
    	makeInfoWindowEvent(map, infoWindows[k], peopleCont[k], markers[k]);
	}
});


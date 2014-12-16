<!DOCTYPE html>
<html>
  <head>
  <link rel="stylesheet" type="text/css" href="styles.css">
    <meta charset="utf-8">
	<!-- Bootstrap core CSS -->
    <link href="include/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="include/bootstrap/dist/css/bootstrap-theme.min.css" rel="stylesheet">

    <title>twitStat - Map</title>
    <style>
#map-canvas {
    width: 900px;
    height: 500px;
	margin: 0 auto;
}
#butts {
	text-align: center;
}
textarea {
	line-height: 15px
}
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script>
var home = new google.maps.LatLng(20,0);
//var infowindowstlouis = new google.maps.InfoWindow();  

var marker;
var map;

var subjson = [];
var people = [];			// array to hold all people

var infoWindow;
var infoWindows = []; 	// array for holding all windows
var contents = Array();		// array for people info
var tempStr;
var raw = [];

var infoWindow;

var markers = [];
var datlength;
options = {
	"url": "https://babbage.cs.missouri.edu/~cs3380f14grp14/interface/map.php",
	"content": "data",
	"format": "json"
};
$.get("https://babbage.cs.missouri.edu/~cs3380f14grp14/interface/getGeoTweets.php", options, function(data) {

	processData(data);

});// end get

function listenMarker (marker, f, content) {
	google.maps.event.addListener( markers[f], 'click', function(event){
		var index = f;
		//var tempStr = '<h1>'+raw[]+'</h1>';
//		console.log( contents[f] + " *** " + contents[1] );
		infoWindow.setContent( content );
		map.panTo(event.latLng);
		map.setZoom(12);
		infoWindow.open(map, this);
	});
}

function initialize() {
	var mapOptions = {
		zoom: 2,
		center: home
	};

	map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
		
	google.maps.event.addListener(marker, 'click', toggleBounce);

}// end initialize

function toggleBounce() {

	if (marker.getAnimation() != null) {
		marker.setAnimation(null);
	} else {
	    marker.setAnimation(google.maps.Animation.BOUNCE);
	}
}// end toggle bounce

/*
 *	search logic
 */
function runSearch(){
	
	/*
	 *	get input from boxes
	 */
	map.panTo(home);
	map.setZoom(2);
	var qType = $('#qType').val()				
	var inp = $('#search_text').val()
	console.log("type: "+qType+" --- search: "+inp);
	// clear map
	for (var f=0; f < markers.length; f++){
		markers[f].setMap(null);
	}// end clear markers loop

	
	var url = "https://babbage.cs.missouri.edu/~cs3380f14grp14/interface/geoSearch.php?search="+qType+"&query="+inp;
	console.log("url: "+url);
	$.get( url, options, function(data){

		processData(data);

	});// end get
}// end search logic

/*
 * logic to handle parsing of returned data from ajax calls, then place markers on map
 */
function processData(data){

	infoWindow = new google.maps.InfoWindow({
		content : "blank"
	});

	markers = [];
	people = [];
	raw = [];
		
	console.log("get!");
//	console.log(data);
	datlength = data.length;
	console.log("# returned..."+datlength);
	for( var i = 0 ; i< datlength; i++ ){	// loop through JSON data
		subjson = [];
		subjson = data[i];
		console.log(data[i]);
		var tempraw = [];

	/*
	 *	Bring all data in json into temp array, then save to raw[]
	 */
		tempraw[tempraw.length] = data[i].user_id;
		tempraw[tempraw.length] = data[i].user_name;
		tempraw[tempraw.length] = data[i].screen_name;
		tempraw[tempraw.length] = data[i].language;
		tempraw[tempraw.length] = data[i].tweet;
		tempraw[tempraw.length] = data[i].lat;
		tempraw[tempraw.length] = data[i].long;
		raw[raw.length] = tempraw;

	/*
	 *	Create info window for each marker, add to array for all windows
	 */
	 	var tweetText = data[i].tweet;
	 	tweetText = tweetText.replace(/;;/g,'\'');
	 	tweetText = tweetText.replace(/::/g,'\"');
		tempStr = '';		
		tempStr = tempStr.concat('<h3>'+ data[i].user_name +'</h3>');
		tempStr = tempStr.concat('<p> <i>id number:</i>   '+ data[i].user_id +'</p>');
		tempStr = tempStr.concat('<p> <i>screen name:</i>   '+ data[i].screen_name +'</p>');
		tempStr = tempStr.concat('<p> <i>language:</i>   '+ data[i].language +'</p>');
		tempStr = tempStr.concat('<p> <i>tweet:</i>   '+ tweetText +'</p>');
		tempStr = tempStr.concat('<p> <i>lat:</i>   '+ data[i].lat);
		tempStr = tempStr.concat('<i>, long:</i>'+ data[i].long +'</p>');
		tempStr = tempStr.concat('');
		contents[contents.length] = tempStr;			// append individual person's data to whole array
	//		console.log( contents[contents.length-1] );		// debuging...
	/*
	 *	Take imported data and create marker objects, save to people[]
	 */
		var tempPos = new google.maps.LatLng( data[i].lat, data[i].long );		// create pin for user
		people[people.length] = tempPos;
		
		markers[ markers.length ] = new google.maps.Marker({
			map:map,
			animation:google.maps.Animation.DROP,
			position:people[i],
	  	})
		listenMarker( markers[i], i, tempStr );
	}// end main JSON loop		
	console.log("ajax done!")			// debugging...
	
}// end processdata

google.maps.event.addDomListener(window, 'load', initialize);

    </script>
  </head>
  <body>
	<?php 
		include 'nav.php';
// Make sure private data is secured using HTTPS
        if ($_SERVER['HTTPS'] !== 'on') {
                $redirectURL = 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
                header("Location: $redirectURL");
                exit;
        } 
	?>
	
	<div class="container theme-showcase" role="main">
		<br>
		<br>
		<br>
		<center>
		<div id="searchBar">
			<select class="form-group" name="qType" id="qType">
				<option value="tweet" selected>Tweet</option>
				<option value="username">screen name</option>
			</select>
			<textarea name="user" id="search_text" class="form-control" rows="1" placeholder="Search.."></textarea>
			<br>
			<button role="button" class="btn" type="button" onclick="runSearch()">Search</button>
			<br>
			<br>
		</div>    
		<div id="map-canvas"></div>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="include/bootstrap/dist/js/bootstrap.min.js"></script>
  </body>
</html>



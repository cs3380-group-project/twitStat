/*

	geotweets

*/

var fs = require('fs');
var Twit = require('twit');
var T = new Twit({
	  consumer_key: // need to get your own credentials
	, consumer_secret: // need to get your own credentials
	, access_token: // need to get your own credentials
	, access_token_secret: // need to get your own credentials
})
var wstream = fs.createWriteStream('geoDB.sql');

var stream = T.stream('statuses/sample')	// create stream object

stream.on('tweet', function (tweet) {	// go and grab one tweet from stream
	var geo = String(tweet.geo);
	if(geo.indexOf("null")==-1){
		var coordChunk = JSON.stringify(tweet.geo);
		var clean = '';
		console.log("chunk: "+coordChunk);
		var chunkStr = String(coordChunk);
		clean = chunkStr.substring(31);
		var coord = 0;
		coord = clean.match(/([0-9.-])+/gi);
		console.log("\tlat: " ,parseFloat( coord[0] ));
		var lat = parseFloat( coord[0] );
		console.log("\tlong: ",parseFloat( coord[1] ));
		var long = parseFloat( coord[1] );
	}
})

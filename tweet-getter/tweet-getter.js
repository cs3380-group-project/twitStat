/*
 *	tweet-getter
 *
 *  example program on how to get tweets using twitter api and node.js:
 *	grabs a single tweet from stream and prints onto screen
 */
 var fs = require('fs');
 var Twit = require('twit');
 
var T = new Twit({								// connect to twitter api
	  consumer_key: //[need to get your own credentials]
	, consumer_secret: //[need to get your own credentials]
	, access_token: //[need to get your own credentials]
	, access_token_secret: //[need to get your own credentials]
})

var stream = T.stream('statuses/sample')	// create stream object

stream.on('tweet', function (tweet) {		// go and grab one tweet from stream
  console.log(tweet)					// log tweet onto screen
  stream.stop();						// close stream
})

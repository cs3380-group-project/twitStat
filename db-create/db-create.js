/*
* tweet-getter
*
* example program on how to get tweets using twitter api and node.js:
* grabs a single tweet from stream and prints onto screen
*/
var fs = require('fs');
var Twit = require('twit');
var T = new Twit({
	  consumer_key:         // need to get your own credentials
	, consumer_secret:      // need to get your own credentials
	, access_token:         // need to get your own credentials
	, access_token_secret:  // need to get your own credentials
})
var wstream = fs.createWriteStream('tweetDB.sql');

wstream.write("DROP SCHEMA IF EXISTS tweets CASCADE;\n");	// init table
wstream.write("CREATE SCHEMA tweets;\n");
wstream.write("SET search_path = tweets;\n");

wstream.write("CREATE TABLE twit_user(\n\tusr_id varchar(50) primary key,\n\tname varchar(50),\n\tscreen_name varchar(50),\n\t");
wstream.write("location varchar(50),\n\tdesription varchar(500),\n\tfollowers integer,\n\t");
wstream.write("friends integer,\n\tcreated_at varchar(20),\n\tstatus_count integer,\n\t");
wstream.write("fav_count integer,\n\tlang varchar(4),\n\tprofile_img_url varchar(300),\n\t");
wstream.write("default_img boolean\n);\n");

wstream.write("CREATE TABLE tweets(\n\tid serial primary key,\n\ttweet varchar(145) NOT NULL,\n\t");
wstream.write("source varchar(300),\n\tuser_id integer\n);\n");


wstream.write("CREATE TABLE geo(\n\tid serial references tweets,\n\tgeo varchar(50),\n\t");
wstream.write("coords varchar(50)\n);\n");

wstream.write("");

var stream = T.stream('statuses/sample')	// create stream object

var count = 100;

stream.on('tweet', function (tweet) {	// go and grab one tweet from stream
//		console.log(tweet)	// log tweet onto screen
		//count--;
		
		// create user entry
		wstream.write("INSERT INTO twit_user VALUES (\n\t");
		wstream.write("\'"+tweet.user.id+"\',\n\t");
		wstream.write("\'"+tweet.user.name+"\',\n\t");
		wstream.write("\'"+tweet.user.screen_name+"\',\n\t");

		var location = String(tweet.user.location);							// need to use local variable with replace...
		var newloc = location.replace(/'/g,"::");
		wstream.write("\'"+newloc+"\',\n\t");

		var dsp = String(tweet.user.description);
		var newdsp = dsp.replace(/'/g,";;")
		console.log(newdsp);
		wstream.write("\'"+newdsp+"\',\n\t");
		wstream.write( tweet.user.followers_count+",");
		wstream.write( tweet.user.friends_count+",");
		wstream.write("\'"+tweet.user.created_at+"\',");
		wstream.write( tweet.user.statuses_count+",");
		wstream.write( tweet.user.friends_count+",");
		wstream.write("\'"+tweet.user.lang+"\',\n\t");
		wstream.write("\'"+tweet.user.profile_image_url+"\',\n\t");
		wstream.write("\'"+tweet.user.default_profile_image+"\'\n");
		wstream.write(");\n");
		
		// create tweet entry
		wstream.write("\nINSERT INTO tweets VALUES (\n\tdefault,\n\t");
		var text = String(tweet.text);
		text = text.replace(/"/g,'::')										// make sure vairable is a string
		text = text.replace(/'/g,';;')										// make sure vairable is a string
		wstream.write("\'"+text+"\',\n\t");
		
		var src = String(tweet.source);
		var newsrc = src.replace(/"/g,'::');
		wstream.write("\'"+newsrc+"\',\n\t");
		
		wstream.write(tweet.user.id+"\n");
		wstream.write(");\n");
		
		if(tweet.geo != null){
			wstream.write("INSERT INTO geo VALUES (\n\t");		
			wstream.write("DEFAULT,\n\t");				
			wstream.write("\'"+tweet.geo+"\',\n\t");
			wstream.write("\'"+tweet.coordinates+"\'\n");
			wstream.write(");\n");						
		}
})

#db-create
node.js script that pulls tweets from the twitter stream, then writes tweets into an sql file

##Installation and running 
    * first install node js  @ http://nodejs.org/download/
    ...then download this folder and run 
    ```
    npm install
    ```
     this should install all dependencies.
    
    * You'll also need some access tokens to use the api, get them here: 
        https://dev.twitter.com/oauth/overview/application-owner-access-tokens
    
    * To run, type 
    ```
    node tweet-getter.js
    ```
  
    * To import a .sql file into postgre...(assuming postgre is already installed on your system)
    ```
    psql
    
    \i sampleDB.sql
    ```
    
##Other Notes
  * having a few issues with how text is formatted when recieving data from the twitter stream: text that contains single or double quotes causes the server to throw an error when importing. Still working on cleaning out entries.
  * May need to look into sanitizing fields when importing into database- could be an entry point for a sql injection attack
  * sampleDB.sql contains a small subset of the total data needed for the project. This data set is to be used until the node.js script actually works

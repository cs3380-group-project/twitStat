<html>
  <head>
  <title>TwitStat - Pie</title>
    <!--Load the AJAX API-->
	<link rel="stylesheet" type="text/css" href="styles.css">
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">

      // Load the Visualization API and the piechart package.
      google.load('visualization', '1.0', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

        // Create the data table.
         var data = new google.visualization.DataTable();
        data.addColumn('string', 'name');
        data.addColumn('number', 'ratings');
		var data2 = new google.visualization.DataTable();
        data2.addColumn('string', 'year');
        data2.addColumn('number', 'counts');
		var data3 = new google.visualization.DataTable();
        data3.addColumn('string', 'weekdays');
        data3.addColumn('number', 'counts');
		<?php

		//adding connection
		include("../../secure/database.php");
		$dbconn = pg_connect(HOST." ".DBNAME." ".USERNAME." ".PASSWORD) or die ('Could not connect');
		//Performing SQL query


		$query1 = "SELECT lang, count(lang) AS ct FROM twitStat.twit_user GROUP BY 1;";
		$result1 = pg_query($query1) or die('Query failed: ' . pg_last_error());
		$query2 = "SELECT created_at FROM twitStat.twit_user GROUP BY 1;";
		$result2 = pg_query($query2) or die('Query failed: ' . pg_last_error());
		$query3 = "SELECT created_at FROM twitStat.twit_user GROUP BY 1;";
		$result3 = pg_query($query3) or die('Query failed: ' . pg_last_error());
		?>
		
        data.addRows([
		<?php
			// Performing SQL query
			while ($line = pg_fetch_array($result1, null, PGSQL_ASSOC)) {
			// Printing results in HTML
					echo "['".$line[lang]."',".$line[ct]."],";	
			}
		?>
        ]);
		
		data2.addRows([
		<?php
			$array=array();
			// Performing SQL query
			while ($line2 = pg_fetch_array($result2, null, PGSQL_ASSOC)) {
					$year = explode(" ", $line2[created_at]);
					array_push($array,$year[5]);
					$addyear=array_count_values($array);
				}
			for ($i=min(array_keys($addyear));$i<(max(array_keys($addyear))+1);$i++){
				echo "['".$i."',".$addyear[$i]."],";	
			}
		?>
        ]);
		
		data3.addRows([
		<?php
			$array2=array();
			// Performing SQL query
			while ($line3 = pg_fetch_array($result3, null, PGSQL_ASSOC)) {
					$date = explode(" ", $line3[created_at]);
					array_push($array2,$date[0]);
					$addDate=array_count_values($array2);
			}
			echo "['Mon',".$addDate['Mon']."],";
			echo "['Tue',".$addDate['Tue']."],";
			echo "['Wed',".$addDate['Wed']."],";
			echo "['Thu',".$addDate['Thu']."],";
			echo "['Fri',".$addDate['Fri']."],";
			echo "['Sat',".$addDate['Sat']."],";
			echo "['Sun',".$addDate['Sun']."]";
		?>
        ]);

        // Set chart options
        var option1 = {'title':'Language',
                       'width':1000,
                       'height':1000};

		var option2 = {'title':'Year User Created',
                       'width':1000,
                       'height':1000};
					   
		var option3 = {'title':'Tweets in Weekdays',
                       'width':1000,
                       'height':1000};

        // Instantiate and draw our chart, passing in some options.
       var chart = new google.visualization.PieChart(document.getElementById('language_chart_div'));
        chart.draw(data, option1);
		var chart2 = new google.visualization.LineChart(document.getElementById('year_chart_div'));
        chart2.draw(data2, option2);
		var chart3 = new google.visualization.ColumnChart(document.getElementById('weekdays_chart_div'));
        chart3.draw(data3, option3);
      }
	  <?php
			pg_free_result($result1);
			pg_free_result($result2);
			pg_free_result($result3);
		// Closing connection
		pg_close($dbconn);
		?>
    </script>
  </head>

  <body>
			<form action="login.php" method='post' id="sign">
			<input type='submit' name='signIn' value='Logout' />
		</form>
	
		<div id="banner">
		    twitStats
			<br>
		</div>
		<table border="0">
		<tr>
			<td>
				<form action="index.php" method='post' >
					<input type='submit' name='submit' value="Home" class="buttons"/>
					<br>
				</form>
			</td>	
			<td>	
				<form action="search.php" method='post' >
					<input type='submit' name='submit' value="Search" class="buttons"/>
					<br>
				</form>
			</td>
			<td>
				<form action="photowall.php" method='post' >
					<input type='submit' name='submit' value="Photowall" class="buttons"/>
					<br>
				</form>
			</td>	
			<td>	
				<form action="map.php" method='post' >
					<input type='submit' name='submit' value="Map" class="buttons"/>
					<br>
				</form>
			</td>	
			<td>	
				<form action="pie.php" method='post' >
					<input type='submit' name='submit' value="Pie" class="buttons"/>
					<br>
				</form>
			</td>	
		</table>	
    <!--Div that will hold the pie chart-->
    <div id="language_chart_div" align ="center"></div>
	<div id="year_chart_div" align ="center" ></div>
	<div id="weekdays_chart_div" align ="center" ></div>
  </body>
</html>

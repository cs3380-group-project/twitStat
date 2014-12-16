<html>
  <head>
    <!--Load the AJAX API-->
	<link rel="stylesheet" type="text/css" href="styles.css">
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
	<link href="include/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Bootstrap theme -->
	<link href="include/bootstrap/dist/css/bootstrap-theme.min.css" rel="stylesheet">
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
		include("../secure/database.php");
        $dbconn = pg_connect(HOST." ".DBNAME." ".USERNAME." ".PASSWORD)
        or die('Could not connect: ' . pg_last_error());
		//Performing SQL query


		$query1 = "SELECT lang, count(lang) AS ct FROM twitStat.twit_user GROUP BY 1;";
		$result = pg_query($query1) or die('Query failed: ' . pg_last_error());
		$query2 = "SELECT created_at FROM twitStat.twit_user GROUP BY 1;";
		$result2 = pg_query($query2) or die('Query failed: ' . pg_last_error());
		$query3 = "SELECT created_at FROM twitStat.twit_user GROUP BY 1;";
		$result3 = pg_query($query3) or die('Query failed: ' . pg_last_error());
		$num_row=pg_num_rows($result);
		?>
		
        data.addRows([
		<?php
			// Performing SQL query
			while ($line = pg_fetch_array($result, null, PGSQL_ASSOC)) {
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
                       'width':700,
                       'height':700};

		var option2 = {'title':'Year User Created',
                       'width':700,
                       'height':700};
					   
		var option3 = {'title':'Day Created',
                       'width':700,
                       'height':700};
					   
        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('language_chart_div'));
        chart.draw(data, option1);
		var chart2 = new google.visualization.LineChart(document.getElementById('year_chart_div'));
        chart2.draw(data2, option2);
		var chart3 = new google.visualization.ColumnChart(document.getElementById('weekdays_chart_div'));
        chart3.draw(data3, option3);
      }
	  
	function showLanguage() {
		var x = document.getElementById("year_chart_div");
		x.setAttribute("class", "hidden");
		var y = document.getElementById("language_chart_div");
		y.setAttribute("class", "pie");
		var z = document.getElementById("weekdays_chart_div");
		z.setAttribute("class", "hidden");
	}
	
	function showYear() {
		var x = document.getElementById("language_chart_div");
		x.setAttribute("class", "hidden");
		var y = document.getElementById("year_chart_div");
		y.setAttribute("class", "pie");
		var z = document.getElementById("weekdays_chart_div");
		z.setAttribute("class", "hidden");
	}
	
	function showWeek() {
		var x = document.getElementById("language_chart_div");
		x.setAttribute("class", "hidden");
		var z = document.getElementById("weekdays_chart_div");
		z.setAttribute("class", "pie");
		var y = document.getElementById("year_chart_div");
		y.setAttribute("class", "hidden");
	}
	  <?php
			pg_free_result($result);
			pg_free_result($result2);
			pg_free_result($result3);
		// Closing connection
		pg_close($dbconn);
		?>
    </script>
  </head>

  <body onload="showLanguage()">
		<?php include 'nav.php'; ?>
    <!--Div that will hold the pie chart-->

	
		<center>
		<div id="language_chart_div" align ="center"></div>
		<div id="year_chart_div" align ="center" ></div>
		<div id="weekdays_chart_div" align ="center" align="center"></div>
		</center>
	
	<center>
	<div id="charts" class="btn-group btn-group-lg" role="group" aria-label="Large button group">
      <button type="button" class="btn btn-default" onclick="showLanguage()" autofocus="true">Language Used</button>
	  <button type="button" class="btn btn-default" onclick="showWeek()">Day Account Created</button>
      <button type="button" class="btn btn-default" onclick="showYear()">Year Account Created</button>
    </div>
	</center>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="include/bootstrap/dist/js/bootstrap.min.js"></script>
  </body>
</html>

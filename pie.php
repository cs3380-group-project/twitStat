<html>
  <head>
    <!--Load the AJAX API-->
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
		<?php

		//adding connection
		$dbconn = pg_connect() or die ('Could not connect');
		//Performing SQL query


		$query1 = "SELECT lang, count(lang) AS ct FROM twitStat.twit_user GROUP BY 1;";
		$result = pg_query($query1) or die('Query failed: ' . pg_last_error());
		$query2 = "SELECT created_at FROM twitStat.twit_user GROUP BY 1;";
		$result2 = pg_query($query2) or die('Query failed: ' . pg_last_error());
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
			foreach($addyear as $key =>$item){
				echo "['".$key."',".$item."],";	
			}
		?>
        ]);
		
        // Set chart options
        var option1 = {'title':'Language',
                       'width':1000,
                       'height':1000};

		var option2 = {'title':'Year User Created',
                       'width':1000,
                       'height':1000};
					   
        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('language_chart_div'));
        chart.draw(data, option1);
		var chart2 = new google.visualization.BarChart(document.getElementById('year_chart_div'));
        chart2.draw(data2, option2);
      }
	  <?php
			pg_free_result($result);
			pg_free_result($result2);
		// Closing connection
		pg_close($conn);
		?>
    </script>
  </head>

  <body>
    <!--Div that will hold the pie chart-->
    <div id="language_chart_div" align ="center"></div>
	<div id="year_chart_div" align ="center" ></div>
  </body>
</html>

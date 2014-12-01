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
		<?php

		//adding connection
		$dbconn = pg_connect() or die ('Could not connect');
		//Performing SQL query


		$query1 = "SELECT lang, count(lang) AS ct FROM twitStat.twit_user GROUP BY 1;";
		$result = pg_query($query1) or die('Query failed: ' . pg_last_error());
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

        // Set chart options
        var options = {'title':'Language',
                       'width':1000,
                       'height':1000};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
	  <?php
			pg_free_result($result);
		// Closing connection
		pg_close($conn);
		?>
    </script>
  </head>

  <body>
    <!--Div that will hold the pie chart-->
    <div id="chart_div" align="center"></div>
  </body>
</html>

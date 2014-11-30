<!DOCTYPE html>
<html>
  <head>
    <style>
      #map_canvas {
        width: 900px;
        height: 500px;
		margin: 0 auto;
      }
    </style>
    <script>
      function initialize(){
        var mapCanvas = document.getElementById('map_canvas');
        var mapOptions = {
          center: new google.maps.LatLng(20, 0),
          zoom: 2,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        var map = new google.maps.Map(mapCanvas, mapOptions)
      }
	  
	  function loadScript() {
		  var script = document.createElement('script');
		  script.type = 'text/javascript';
		  script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp&' +
			  'callback=initialize';
		  document.body.appendChild(script);
		}

	  window.onload = loadScript;

    </script>
	<style>
	form{
			text-align: center;
			margin: 0 auto;
		}
	</style>
  </head>
  <body>
  
	<form action="<?= $_SERVER['PHP_SELF'] ?>" method='post'>
		<select name="cars">
		<option value="Tweet" selected>Tweet</option>
		<option value="Name">Name</option>
		</select>
		<input type="text" name="user">
		<input type='submit' name='submit' value='Search' />
		<br>
		<br>
	</form>

    <div id="map_canvas"></div>
  </body>
</html>
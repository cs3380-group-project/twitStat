<!--This file is to be included at the top of each page, it's only function is to display to navbar -->
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container" style="color: cornflowerblue">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand active" href="index.php">twitStats</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
			<li class="dropdown">
			  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
				Stats
				<span class="caret"></span>
			  </a>
			  <ul class="dropdown-menu" role="menu">
                <li><a href="search.php">Search</a></li>
                <li><a href="photowall.php">Photowall</a></li>
                <li><a href="pie.php">Charts</a></li>
				<li><a href="map.php">Map</a></li>
              </ul>
            </li>
			<li><a href="distribution.php">Who Did What</a></li>
			<!-- The buttons on the navbar change depending on whether or not the user is logged in-->
			<?php
					session_start();
					if(isset($_SESSION['login_user'])){
							echo "<li><a href='profile.php'>Profile</a></li>";
							echo "<li><a href='logout.php'>Logout</a></li>";
						} else {
							echo "<li><a href='login.php'>Login</a></li>";
						};
						
			?>
          </ul>
        </div>
      </div>
    </nav>
	<br>
	<br>
	<br>

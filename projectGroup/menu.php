<div id="menu">
<a href="index.php" style="color:red">Home</a>&nbsp;&nbsp;
<?php
if ($loggedIn) {
?>
<a href="page.php?page=page1" style="color:red">Page 1</a>&nbsp;&nbsp;
<a href="page.php?page=page2" style="color:red"> Page 2 </a>&nbsp;&nbsp;
<a href="logout.php">    Logout</a>
<?php
} else {
?>
<a href="login.php" style="color:red">Login</a>
<?php
}
?>

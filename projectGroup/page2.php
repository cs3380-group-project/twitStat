<!DOCTYPE html>
<html>
<head>
	<title>Ingredient</title>
	<style>
		#dropBox {
			width: 300px;
			height: 300px;
			border: 2px solid pink;
			border-radius: 10px;
			box-shadow: 0px 0px 5px pink;
			text-align: center;
			background-color:white;
		}
		.food {
			width: 200px;
		}
	</style>
	<link href="css/ui-lightness/jquery-ui-1.10.4.custom.css" rel="stylesheet">
	<script src="js/jquery-1.10.2.js"></script>
	<script src="js/jquery-ui-1.10.4.custom.js"></script>
	<script>
		$(function(){
			// Make the food draggable
			$('.food').draggable();
			
			// Make the dropBox droppable
			// http://jqueryui.com/droppable/
			$('#dropBox').droppable({
				// "drop" is an event. When a "drop" event occurs, this anonymous function is invoked
				drop: function(event, ui) {
					
					// event contains data regarding the drop event
					console.dir(event);
					// ui contains info about the thing that was dropped
					console.dir(ui);
					
					// Grab a reference to the dropped item
					var droppedItem = ui.draggable;
					// Make a message customized to reflect what item was dropped
					var message = "Add " + droppedItem.prop('alt')+" for tasty broth.";
					
					// Remember, this = the DOM object in context
					// $(this) = a jQuery object
					$(this)
						.find('h2')
						.html(message);
					// Doing .find, then .html is called chaining
				}
			});
		});
	</script>
</head>
<body>
	<div id="inline">
		<div id="dropBox">
			<h2 style="color:red;">Drop Here</h2>
		</div>
			<img class="food" src="images/cinnamon.jpg" alt="cinnamon">
			<img class="food" src="images/onion.jpg" alt="onion">
			<img class="food" src="images/ginger.jpg" alt="ginger">
	</div>
</body>
</html>
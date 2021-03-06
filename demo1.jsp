<html>
	<head>
	<script type="text/javascript" src="http://applab:8282/graphLab/javascript/loader.js"></script> 	 <!--Load the AJAX API-->
	<script type="text/javascript">		
		google.charts.load('current', {'packages':['corechart']}); // Load the Visualization API and the corechart package.
		google.charts.setOnLoadCallback(drawChart); // Set a callback to run when the Google Visualization API is loaded.
		// Callback that creates and populates a data table, instantiates the pie chart, passes in the data and draws it.
		function drawChart() 
		{ // Create the data table.
			var data = new google.visualization.DataTable();
			data.addColumn('string', 'Topping');
			data.addColumn('number', 'Slices');
			data.addRows(
				[
					['Mushrooms', 3],
					['Onions', 1],
					['Olives', 1],
					['Zucchini', 1],
					['Pepperoni', 2]
				]);		  
			var options = // Set chart options
			{
				'title':'How Much Pizza I Ate Last Night', 
				'width':400,
				'height':300
			};
			var chart = new google.visualization.PieChart(document.getElementById('chart_div')); // Instantiate and draw our chart, passing in some options.
			chart.draw(data, options);
		}
	</script>
	</head>
	<body>
		<div id="chart_div"></div> <!--Div that will hold the pie chart-->
	</body>
</html>
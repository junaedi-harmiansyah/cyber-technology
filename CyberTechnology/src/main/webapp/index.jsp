<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<div>
		<div class="row">
			<div class="col-xs-6">
				<div id="piechart"></div>

				<script type="text/javascript"
					src="https://www.gstatic.com/charts/loader.js"></script>

				<script type="text/javascript">
					// Load google charts
					google.charts.load('current', {
						'packages' : [ 'corechart' ]
					});
					google.charts.setOnLoadCallback(drawChart);

					// Draw the chart and set the chart values
					function drawChart() {
						var data = google.visualization.arrayToDataTable([
								[ 'Market', 'Count per Year' ],
								[ 'TOKO PEDIA', 3 ], [ 'LAIN-LAIN', 2 ],
								[ 'OLX', 4 ], [ 'BUKA LAPAK', 2 ] ]);

						// Optional; add a title and set the width and height of the chart
						var options = {
							'title' : 'Marketplace Evaluation',
							'width' : 500,
							'height' : 350
						};

						// Display the chart inside the <div> element with id="piechart"
						var chart = new google.visualization.PieChart(document
								.getElementById('piechart'));
						chart.draw(data, options);
					}
				</script>
			</div>
			<div class="col-xs-6">
				<script>
					window.onload = function() {

						var dataPoints = [];

						var options = {
							animationEnabled : true,
							theme : "light2",
							title : {
								text : "Current Evaluation"
							},
							axisX : {
								valueFormatString : "DD MMM YYYY",
							},
							axisY : {
								title : "Rp.",
								titleFontSize : 24,
								includeZero : false
							},
							data : [ {
								type : "spline",
								yValueFormatString : "$#,###.##",
								dataPoints : dataPoints
							} ]
						};

						function addData(data) {
							for (var i = 0; i < data.length; i++) {
								dataPoints.push({
									x : new Date(data[i].date),
									y : data[i].units
								});
							}
							$("#chartContainer").CanvasJSChart(options);

						}
						$
								.getJSON(
										"https://canvasjs.com/data/gallery/jquery/daily-sales-data.json",
										addData);

					}
				</script>

				<div id="chartContainer" style="height: 350px; width: 100%;"></div>
				<script
					src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
				<script
					src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
			</div>
		</div>
	</div>


</body>
</html>
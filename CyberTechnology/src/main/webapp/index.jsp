<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/chart.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js">
	
</script>
</head>
<body>

	<div style="width: 100%; height: 100%">
		<canvas id="myChart"></canvas>
	</div>
	<script>
		$(document).ready(
				function() {
					$.ajax({
						url : 'product/countMarketplace',
						method : "GET",
						success : function(data) {

							var label = [];
							var value = [];
							for ( var i in data) {
								console.log(data[i]);
								if (i % 2 == 0) {
									label.push(data[i]);
								} else {
									value.push(data[i]);
								}

							}
							var ctx = document.getElementById("myChart")
									.getContext('2d');
							var myChart = new Chart(ctx, {
								type : 'bar',
								data : {
									labels : label,
									datasets : [ {
										label : 'Market Place count ',
										backgroundColor : [
												'rgba(255, 206, 86, 0.2)',
												'rgba(54, 162, 235, 0.2)',
												'rgba(75, 192, 192, 0.2)',
												'rgba(255, 99, 132, 0.2)' ],
										borderColor : [
												'rgba(255, 206, 86, 1)',
												'rgba(54, 162, 235, 1)',
												'rgba(75, 192, 192, 1)',
												'rgba(255,99,132,1)' ],
										borderWidth : 1,
										data : value
									} ]
								},
								options : {
									scales : {
										yAxes : [ {
											ticks : {
												beginAtZero : true
											}
										} ]
									}
								}
							})
						}
					});
				});
	</script>
	<center>
		<%
			// Set refresh, autoload time as 10 menit
		response.setIntHeader("Refresh", 300);

		// Get current time
		Calendar calendar = new GregorianCalendar();
		String am_pm;

		int hour = calendar.get(Calendar.HOUR);
		int minute = calendar.get(Calendar.MINUTE);
		int second = calendar.get(Calendar.SECOND);

		if (calendar.get(Calendar.AM_PM) == 0)
			am_pm = "AM";
		else
			am_pm = "PM";
		/* String CT = hour + ":" + minute + ":" + second + " " + am_pm;
		out.println("Crrent Time: " + CT + "\n"); */
		%>
	</center>
</body>
</html>
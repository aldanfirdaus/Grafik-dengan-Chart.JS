<?php
include('koneksi.php');
$data = mysqli_query($koneksi,"select * from covid_negara");
while($row = mysqli_fetch_array($data)){
	$nama_negara[] = $row['negara'];
	$total_cases[] = $row['total_cases'];
	$new_cases[] = $row['new_cases'];
	$new_death[] = $row['new_death'];
	$total_recovered[] = $row['total_recovered'];
	$active_cases[] = $row['active_cases'];
	$total_death[] = $row['total_death'];
}
?>
<!doctype html>
<html>

<head>
	<title>Pie Chart</title>
	<script type="text/javascript" src="Chart.js"></script>
</head>

<body>
	<div id="canvas-holder" style="width:50%; height: 100%;">
		<canvas id="chart-area"></canvas>
	</div>
	<script  type="text/javascript">
	  var ctx = document.getElementById("chart-area").getContext("2d");
	  var data = {
	            labels: <?php echo json_encode($nama_negara); ?>,
	            datasets: [
	            {
	              label: "New Cases",
	              data:<?php echo json_encode($total_recovered); ?>,
	              backgroundColor: [
	                '#29B0D0',
	                '#2A516E',
	                '#F07124',
	                '#CBE0E3',
	                '#979193',
	                '#7FFF00',
	                '#B8860B',
	                '#FF1493',
	                '#FFD700',
	                '#7CFC00'
	              ]
	            }
	            ]
	            };

	  var myPieChart = new Chart(ctx, {
	                  type: 'doughnut',
	                  data: data,
	                  options: {
	                    responsive: true
	                }
	              });

	</script>

</body>

</html>

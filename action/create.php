<?php 
// set-параметр для автоматического определения таблицы для вставки
include_once('../helpers/db.php');

$set  = $_GET['set'];
$id   = $_GET['id'];
$data = retrieve($set, '*', 'id=1')[0];

foreach ($data as $key => $value)
	$headers[] =  $key;

if ($_POST) {
	if ($set === 'actors') {
		$film = $_POST['film'];
		$_POST['film'] = retrieve('films', 'id', "title LIKE '%$film%'")[0]['id'];
	}
	
	insert_into($set, $_POST);
}
?>
<html>
<head>
	<title>Filmzilla</title>
	<link rel="stylesheet" href="/static/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="/css/slate.bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="/css/main.css">
</head>
<body>
	<div class="container">
		<form action="<?php $_PHP_SELF ?>" method="POST">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h1>Filmzilla</h1>
					<div class="btn-group">
						<h2 class="field-label">New <?php echo substr($set, 0, -1) ?></h2>
						<div>
							<input type="submit" class="btn btn-danger" value="Save" />
							<a href="/index.php" class="btn btn-danger">Cancel</a>
						</div>
					</div>
				</div> <!-- panel-heading -->
				<div class="panel-body">
					<?php foreach ($data as $key => $value) {
						if ($key !== 'id') {
							$type = $key === 'film' ? 'text' : get_value_type($value);
							echo "<div class='form-group'>";
							echo component('label', "for='$key'", 
								component('h4', 'class="text-danger film-info-label"', $key));
							echo component('input', 
								"type='$type' class='form-control' name='$key' required placeholder='$value'", '');
							echo "</div>";
						}
					} ?>
				</div> <!-- panel -->
			</div>	
		</form>
	</div>
</body>
<script type="text/javascript" src="/static/jquery/jquery.min.js"></script>
<script type="text/javascript" src="/static/bootstrap/js/bootstrap.min.js"></script>
</html>
<?php 
include_once('../helpers/db.php');
// set-параметр для автоматического определения таблицы для вставки
$set  = $_GET['set'];
$id   = $_GET['id'];
$data = retrieve($set, '*', "id=$id")[0];

if ($_POST) {
	foreach ($_POST as $key => $value) {
		if ($data[$key] !== $value) {
			update($set, $key, $value, "id=$id");
		}
	}
	$data = retrieve($set, '*', "id=$id")[0];
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
						<h2 class="field-label"><?php echo $data[$data['title']?'title':'name']; ?></h2>
						<div>
							<a href="/index.php" class="btn btn-danger">Home</a>
							<input type="submit" class="btn btn-danger" value="Save" />
							<a href="delete.php?set=<?php echo $set; ?>&amp;id=<?php echo $id; ?>" class="btn btn-danger delete-btn">Delete</a>
						</div>
					</div>
				</div> <!-- panel-heading -->
				<div class="panel-body">
					<?php foreach ($data as $key => $value) {
						if ($key !== 'id' && $key !== 'film') {
							$type = get_value_type($value);
							echo "<div class='form-group'>";
							echo component('label', "for='$key'", 
								component('h4', 'class="text-danger film-info-label"', $key));
							echo component('input', 
								"type='$type' class='form-control' id='$key' name='$key' value='$value'", '');
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
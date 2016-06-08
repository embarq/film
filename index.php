<?php 
// Заголовочный файл
include_once('helpers/db.php');

$filter = $_POST['filter'];
$condition = $filter ? "title LIKE '%$filter%'" : "";
$films = retrieve('films', 'id, title', $condition);
$id = 1;

if ($_POST['film']) $id = $_POST['film'];
else if ($_POST['filter']) $id = $films[0]['id'];
else $id = 1;
?>
<html>
<head>
	<title>Filmzilla</title>
	<link rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/slate.bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h1>Filmzilla</h1>
				<div class="btn-group">
				<!-- toolbar -->
					<!-- dropdown of films -->
					<form action="<?php $_PHP_SELF ?>" class="film-select" method="POST">
						<select name="film" class="film-list btn btn-default" onchange="this.form.submit()">
							<option selected disabled>Choose Film</option>
							<?php foreach ($films as $film) {
								echo option_component($film['id'], $film['title'], ($film['id'] == $id) ? 'selected' : '');
							} ?>
						</select>
					</form>
					<div class="btn-group">
						<!-- add-dropdown -->
						<span class="btn-group">
							<button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">Add  <span class="caret"></span></button>
							<ul class="dropdown-menu add-list" role="menu">
								<li><a href="action/create.php?set=films">Film</a></li>
								<li><a href="action/create.php?set=actors&amp;id=<?php echo $id ?>">Actor</a></li>
							</ul>
						</span>
						<a href="action/update.php?set=films&amp;id=<?php echo $id ?>" class="btn btn-danger">Edit</a>
						<!-- filter-dropdown -->
						<span class="btn-group">
							<button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">Filter  <span class="caret"></span></button>
							<ul class="dropdown-menu add-list" role="menu">
								<li>
									<form action="<?php $_PHP_SELF ?>" method="POST">
										<div class="filter-form">
											<input type="text" name="filter" class="form-control" placeholder="Film title" />
											<button class="btn btn-danger" type="submit"><span class="glyphicon glyphicon-filter"></span></button>
										</div>
									</form>
								</li>
							</ul>
						</span>						
						<a href="action/delete.php?set=films&amp;id=<?php echo $id; ?>" class="btn btn-danger delete-btn">Delete</a>
					</div>
				</div> 
				<!-- toolbar -->
			</div> 
			<!-- panel-heading -->
			<div class="panel-body flex film">
				<!-- current film info -->
				<div>
				<?php	foreach (retrieve('films', '*', "id=$id")[0] as $key => $value) {
					if ($key !== 'id')
						echo component('h4', 'class="field-label"',
							"$key: ".component('span', 'class="text-danger"', $value));
				} ?>
				</div>
				<div>
					<h4 class="text-danger">Actors</h4>
					<div class="actor-list">
					<?php foreach (retrieve('actors', '*', "film=$id") as $actor) {
						$id = $actor['id'];

						echo component('h5', 'class="field-label"', component('a', 
							"href='#$id' data-toggle='collapse' data-href='action/update.php?set=actors&id=$id' class='actor-name'", $actor['name']));
						echo "<div class='actor-info collapse' id='$id'>";
						foreach ($actor as $key => $value) {
							if ($key !== 'id' && $key !== 'name' && $key !== 'film') 
								echo component('h5', "class='field-label'",
									"$key: ".component('span', 'class="text-danger"', $value));
						}
						echo "</div>";
					} ?>
					</div> <!-- actor-list -->
				</div>
			</div> <!-- panel-body -->
		</div> <!-- panel -->	
	</div>
</body>
<script src="static/jquery/jquery.min.js"></script>
<script src="static/bootstrap/js/bootstrap.min.js"></script>
<script>jQuery(document).ready(function(t){$('a[data-href]').dblclick(function(){window.document.location=t(this).data("href")})});</script>
</html>
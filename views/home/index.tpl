<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- new Article index -->
		<meta charset="utf-8" />
		<title>TEST PAGE</title>
		<link rel="stylesheet" href="../public/assets/css/materialize.min.css"/>
		<link rel="stylesheet" type="text/css" href="../public/assets/css/style.css"/>

	</head>
	<body>	
		<?php include HOME . DS . 'includes' . DS . 'menu.inc.php'; ?>

		<main>
			<div class="container">
				<div class="row">
					<?php include HOME . DS . 'includes' . DS . 'error.inc.php'; ?>
					<?php 
						if ($articles): 
							foreach($articles as $article): 
					?>
						<div class="col s12 m6">
							<div class="card blue-grey darken-1">
								<div class="card-content white-text">
									<span class="card-title"><?php echo $article['title'] ?></span>
									<p><?php echo $article['intro'] ?></p>
								</div>
								<div class="card-action">
									<a href="/home/details/<?php echo $article['id']; ?>">See More</a>
								</div>
							</div>
						</div>
					<?php 
						endforeach;
						endif;
					?>
				</div>
			</div>
		</main>
		<?php include HOME . DS . 'includes' . DS . 'footer.inc.php'; ?>
	</body>
</html>
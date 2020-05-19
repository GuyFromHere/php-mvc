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
					<div class="col s6 m5">
						<div class="card-panel orange lighten-1">
							<span class="white-text">Hi! This is a simple website I'm building in PHP. It looks pretty goofy right now because 
							I'm still figuring out what I want to do with it. Feel free to check back later to see how it changes. 
							</span>
						</div>
					</div>
					<?php include HOME . DS . 'includes' . DS . 'error.inc.php'; ?>
					<?php 
						if ($articles): 
							foreach($articles as $article): 
					?>
						<div class="col s12 m6">
							<div class="card cyan lighten-4">
								<div class="card-content">
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
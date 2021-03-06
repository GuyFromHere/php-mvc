<!DOCTYPE html>

<html lang="en">
	<head>
		<meta charset="utf-8" />
		<!-- contact success -->
		<title><?php echo $title; ?></title>
		<link rel="stylesheet" href="../public/assets/css/materialize.min.css"/>
		<link rel="stylesheet" href="../public/assets/css/style.css"/>
	</head>
	<body>

		<?php include HOME . DS .  'includes' . DS . 'menu.inc.php'; ?>

		<main>
			<div class="container">
				<div class="row">
					<div class="col s12">
						<h1><?php echo $title; ?></h1>
					</div>
				</div>

				<div class="row">
					<div class="col s12">
						<h3>E-mail:</h3>
						<p><?php echo $userData['email']; ?></p>
					</div>	
				</div>
			</div>
		</main>
		<?php include HOME . DS . 'includes' . DS . 'footer.inc.php'; ?>
	</body>
</html>
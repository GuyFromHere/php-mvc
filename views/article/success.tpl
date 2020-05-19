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
					<h1><?php echo $title; ?></h1>
				</div>

				<?php if (!empty($articleData['title'])): ?>
					<h3>Title:</h3>
					<p><?php echo $articleData['title']; ?></p>
				<?php endif;?>

				<?php if (!empty($articleData['authorName'])): ?>
					<h3>Author:</h3>
					<p><?php echo implode("",$articleData['authorName']); ?></p>
				<?php endif;?>
				
				<?php if (!empty($articleData['categoryName'])): ?>
					<h3>Category:</h3>
					<p><?php echo implode("",$articleData['categoryName']); ?></p>
				<?php endif;?>

				<h3>Intro:</h3>
				<p><?php echo $articleData['intro']; ?></p>

				<h3>Body:</h3>
				<?php echo $articleData['body']; ?>
			</div>
		</main>
		<?php include HOME . DS . 'includes' . DS . 'footer.inc.php'; ?>
	</body>
</html>
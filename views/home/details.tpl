<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- news details.tpl -->
		<meta charset="utf-8" />
		<title><?php echo $title; ?> | Article Details</title>
		<link rel="stylesheet" href="../../public/assets/css/materialize.min.css"/>
		<link rel="stylesheet" href="../../public/assets/css/style.css"/>
	</head>
	<body>

		<?php include HOME . DS . 'includes' . DS . 'menu.inc.php'; ?>
		<main>
			<div class="container">
					<div class="articleHeader">
						<span class="articleTitle"><?php echo $title; ?></span>
						<span class="articleIntro"><?php echo $intro ?></span>
						<h5>By <?php echo $authorName ?></h5>
						<h5>Published on: <time pubdate="pubdate"><?php echo $datePublished; ?></time></h5>
					</div>
					<div class="articleBody">
						<p><?php echo $articleBody; ?></p>
					</div>

				<a href="/">Back to article list</a>
			</div>
		</main>
		<?php include HOME . DS . 'includes' . DS . 'footer.inc.php'; ?>
	</body>
</html>
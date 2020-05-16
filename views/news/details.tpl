<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- news details.tpl -->
		<meta charset="utf-8" />
		<title><?php echo $title; ?> | Article Details</title>
		<link rel="stylesheet" href="../../public/assets/css/materialize.css"/>
		<link rel="stylesheet" href="../../public/assets/css/style.css"/>
	</head>
	<body>

		<?php include HOME . DS . 'includes' . DS . 'menu.inc.php'; ?>

		<article>
			<header>
				<h1><?php echo $title; ?></h1>
				<p>Published on: <time pubdate="pubdate"><?php echo $datePublished; ?></time></p>
			</header>
			<p>
				<?php echo $articleBody; ?>
			</p>
		</article>

		<a href="/php-mvc/">Back to article list</a>

	</body>
</html>
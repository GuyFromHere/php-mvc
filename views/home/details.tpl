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
				<div class="article-container cyan lighten-4">
					<div class="articleHeader">
						<span class="articleTitle"><?php echo $title; ?></span>
						<span class="articleIntro"><?php echo $intro ?></span>
						
						<span class="articleAuthor">By <?php echo $authorName ?></span>
						<span class="articlePubDate">Published on: <time pubdate="pubdate"><?php echo $datePublished; ?></time></span>
					</div>
					<div class="divider"></div>
					<div class="articleBody">
						<p><?php echo $articleBody; ?></p>
					</div>

				<a href="/">Back to article list</a>
				</div>
			</div>
		</main>
		<?php include HOME . DS . 'includes' . DS . 'footer.inc.php'; ?>
	</body>
</html>
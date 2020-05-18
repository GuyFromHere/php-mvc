<!DOCTYPE html>
<html lang="en">
	<head>
	<!-- news index.tpl -->
		<meta charset="utf-8" />
		<title><?php echo $title; ?></title>
		<link rel="stylesheet" href="public/assets/css/materialize.min.css"/>
		<link rel="stylesheet" href="public/assets/css/style.css"/>
	</head>
	<body>

		<?php include HOME . DS . 'includes' . DS . 'menu.inc.php'; ?>

		<div class="container">
			<h1>News articles</h1>

			<?php
				if ($articles):
				foreach ($articles as $a): 
			?>
				<div class="row">
					<div class="col s12">
						<article>
							<header>
								<h1><a href="/<?php echo APPROOT ?>/news/details/<?php echo $a['id']; ?>"><?php echo $a['title']; ?></a></h1>
								<div class="categoryContainer">Category: 
									<div class="newsCategoryBubble">
										<?php echo $a['category_name'] ?>
									</div>
								</div>
								<div class="pubDate"><?php echo $a['date']; ?></div>
							</header>
							<p><?php echo $a['intro']; ?></p>
							<p><a href="/<?php echo APPROOT ?>/news/details/<?php echo $a['id']; ?>">Continue reading</a></p>
							<hr/>
						</article>
					</div>
				</div>
			<?php
				endforeach;
				else: 
			?>

				<h1>Welcome!</h1>
				<p>We currently do not have any articles.</p>

			<?php endif; ?>
		</div>

	</body>
</html>
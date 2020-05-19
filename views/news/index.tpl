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
		<main>
			<div class="container">
				<?php
					if ($articles):
					foreach ($articles as $a): 
				?>
					<div class="row">
						<div class="col s12">
							<article>
								<header>
									<h4><a href="/news/details/<?php echo $a['id']; ?>"><?php echo $a['title']; ?></a></h4>
									<h5>By <?php echo $a['author_name'] ?></h5>
									<div class="categoryContainer">Category: 
										<div class="newsCategoryBubble">
											<?php echo $a['category_name'] ?>
										</div>
									</div>
									<div class="pubDate"><?php echo $a['date']; ?></div>
								</header>
								<p><?php echo $a['intro']; ?></p>
								<p><a href="/news/details/<?php echo $a['id']; ?>">Continue reading</a></p>
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
		</main>
		<?php include HOME . DS . 'includes' . DS . 'footer.inc.php'; ?>
	</body>
</html>
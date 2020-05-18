<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- contact index -->
		<meta charset="utf-8" />
		<title>New Article</title>
		<link rel="stylesheet" href="../public/assets/css/materialize.min.css"/>
		<link rel="stylesheet" href="../public/assets/css/style.css"/>
	</head>
	<body>

		<?php include HOME . DS . 'includes' . DS . 'menu.inc.php'; ?>

		<div class="container">
			<h1>Enter a new article:</h1>
			<?php
				if (isset($errors)) {
					echo '<ul>';
					foreach ($errors as $e) {
						echo '<li>' . $e . '</li>';
					}
					echo '</ul>';
				}

				if (isset($saveError)) {
					echo "<h2>Error saving data. Please try again.</h2>" . $saveError;
				}
			?>


			<form action="/php-mvc/article/save" method="post">

				<div class="input-field col s12">
					<input type="text" id="title" name="title" />
					<label for="title">Title</label>
				</div>
				
				<div class="input-field col s12">	
					<select id="category" name="categoryList">
						<option value="" disabled selected>Choose a Category:</option>
						<?php
							if ($categories):
							foreach ($categories as $c): 
						?>
							<option value="<?php echo $c['category_id']; ?>"><?php echo $c['category_name']; ?></option>

						<?php
							endforeach;
							else:
						?>
							<option value="xxx">Nada, Zilch, Zero</option>

						<?php endif; ?>
					</select>
				</div>

				<div class="input-field col s12">
					<select id="author" name="authorList">
						<option value="" disabled selected>Choose an Author:</option>
						<?php
							if ($authors):
							foreach ($authors as $c): 
						?>
							<option value="<?php echo $c['author_id']; ?>"><?php echo $c['author_name']; ?></option>

						<?php
							endforeach;
							else:
						?>
							<option value="xxx">Nada, Zilch, Zero</option>

						<?php endif; ?>
					</select>
				</div>

				<div class="input-field col s12">
					<textarea name="intro" id="intro" rows="5" cols="50" placeholder="Intro">
					</textarea>
					<label for="intro">Intro</label>
				</div>

				
				<input type="submit" name="contactFormSubmit" value="Save" />
			</form>
		</div>

	</body>
</html>
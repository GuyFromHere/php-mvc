<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- contact index -->
		<meta charset="utf-8" />
		<title>New Article</title>
		<link rel="stylesheet" href="../public/assets/css/materialize.css"/>
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
					<input value="<?php if(isset($formData)) echo $formData['title']; ?>" 
						type="text" 
						id="title" 
						name="title" 
					/>
					<label>Title:</label>
					
				</div>
				
				<div class="input-field col s12">
					
					<select id="category" name="categoryList">
						<option value="" disabled selected>Choose your option</option>
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
					<label>Category:</label>
				</div>

				<div class="input-field col s12">
					<input value="<?php if(isset($formData)) echo $formData['author']; ?>" 
						type="text" 
						id="author" 
						name="author" 
					/>
					<label>Author:</label>

				</div>

				<div class="input-field col s12">
					<textarea name="intro" id="intro" rows="5" cols="50">
						<?php if(isset($formData)) echo $formData['intro']; ?>
					</textarea>
					<label>Intro:</label>

				</div>

				<div class="input-field col s12">
					<textarea name="body" id="body" rows="5" cols="50">
						<?php if(isset($formData)) echo $formData['body']; ?>
					</textarea>
					<label>Body:</label>

				</div>

				<input type="submit" name="contactFormSubmit" value="Send" />
			</form>
		</div>

	</body>
</html>
<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- contact index -->
		<meta charset="utf-8" />
		<title><?php echo $title; ?></title>
		<link rel="stylesheet" href="../public/assets/css/materialize.css"/>
		<link rel="stylesheet" href="../public/assets/css/style.css"/>
	</head>
	<body>

		<?php include HOME . DS . 'includes' . DS . 'menu.inc.php'; ?>

		<h1><?php echo $title; ?></h1>

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

			<p>
				<label for="title">Title:</label>
				<input value="<?php if(isset($formData)) echo $formData['title']; ?>" 
					type="text" 
					id="title" 
					name="title" 
				/>
			</p>

			<p>
				<label for="author">Author:</label>
				<input value="<?php if(isset($formData)) echo $formData['author']; ?>" 
					type="text" 
					id="author" 
					name="author" 
				/>
			</p>

			<p>
				<label for="intro">Intro:</label>
				<textarea name="intro" id="intro" rows="5" cols="50">
					<?php if(isset($formData)) echo $formData['intro']; ?>
				</textarea>
			</p>

			<p>
				<label for="body">Body:</label>
				<textarea name="body" id="body" rows="5" cols="50">
					<?php if(isset($formData)) echo $formData['body']; ?>
				</textarea>
			</p>

			<input type="submit" name="contactFormSubmit" value="Send" />
		</form>

	</body>
</html>
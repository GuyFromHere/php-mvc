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

		<div class="container">
			<div class="row">
				<h1><?php echo $title; ?></h1>
			</div>
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

			<form action="/php-mvc/contact/save" method="post" class="col s12">

				<div class="row">
					<div class="input-field col s6">
						<input value="<?php if(isset($formData)) echo $formData['first_name']; ?>" 
							type="text" 
							id="first_name" 
							name="first_name" 
							placeholder="First Name"
						/>
					</div>
					<div class="input-field col s6">
						<input value="<?php if(isset($formData)) echo $formData['last_name']; ?>" 
							type="text" 
							id="last_name" 
							name="last_name"
							placeholder="Last Name" 
						/>
					</div>
				</div>

				<div class="row">
					<div class="input-field col s12">
						<input value="<?php if(isset($formData)) echo $formData['email']; ?>" 
							type="text" 
							id="email" 
							name="email" 
							placeholder="Email"
						/>
					</div>
				</div>

				<div class="row">
					<div class="input-field col s12">
						<textarea name="message" id="message" rows="15" cols="50" placeholder="Leave a message">
							<?php if(isset($formData)) echo $formData['message']; ?>
						</textarea>
					</div>
				</div>

				<input type="submit" name="contactFormSubmit" value="Send" />
			</form>
		</div>

	</body>
</html>
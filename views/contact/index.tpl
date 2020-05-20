<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- contact index -->
		<meta charset="utf-8" />
		<title><?php echo $title; ?></title>
		<link rel="stylesheet" href="../public/assets/css/materialize.min.css"/>
		<link rel="stylesheet" href="../public/assets/css/style.css"/>
	</head>
	<body>

		<?php include HOME . DS . 'includes' . DS . 'menu.inc.php'; ?>

		<main>
			<div class="container">
				<div class="row">
					<h1><?php echo $title; ?></h1>
				</div>
				<?php include HOME . DS . 'includes' . DS . 'error.inc.php'; ?>
				
				<form action="/contact/save" method="post">

					<div class="row">
						<div class="input-field col s6">
							<input value="<?php if(isset($formData)) echo $formData['first_name']; ?>" 
								type="text" 
								id="first_name" 
								name="first_name" 
							/>
							<label for="first_name">First Name</label>
						</div>
						<div class="input-field col s6">
							<input value="<?php if(isset($formData)) echo $formData['last_name']; ?>" 
								type="text" 
								id="last_name" 
								name="last_name"
							/>
							<label for="last_name">Last Name</label>
						</div>
					</div>

					<div class="row">
						<div class="input-field col s12">
							<input value="<?php if(isset($formData)) echo $formData['email']; ?>" 
								type="text" 
								id="email" 
								name="email" 
							/>
							<label for="email">Email</label>
						</div>
					</div>

					<div class="row">
						<div class="input-field col s12">
							<textarea name="message" id="message" rows="15" cols="50">
								<?php if(isset($formData)) echo $formData['message']; ?>
							</textarea>
							<label for="message">Enter a message:</label>
						</div>
					</div>

					<button class="btn waves-effect waves-light" 
						type="submit" 
						name="contactFormSubmit" 
					>
						Submit
					</button>

					
				</form>
			</div>
		</main>
		<?php include HOME . DS . 'includes' . DS . 'footer.inc.php'; ?>
        <script type="text/javascript" src="../public/assets/js/materialize.min.js"></script>
	</body>
</html>
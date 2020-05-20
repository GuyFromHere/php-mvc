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
					<span class="formTitle"><?php echo $title; ?></span>
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
							<label>Message</label>
							<div name="message" id="inputDivMessage" name="inputDivMessage" contenteditable="true" class="editableDiv">
							</div>
							<textarea name="message" id="message" class="hiddenText"><?php if(isset($formData)) echo $formData['message']; ?></textarea>
						</div>
					</div>

					<div class="row">
						<button class="btn waves-effect waves-light blue lighten-2" type="submit" name="contactFormSubmit" >Submit</button>
					</div>
					
				</form>
			</div>
		</main>
		<?php include HOME . DS . 'includes' . DS . 'footer.inc.php'; ?>
		<script>
			// Event Handlers
			// Copy contents of input divs to hidden textareas which are used as form inputs.
			document.getElementById("inputDivMessage").addEventListener("input", function(e) {
				document.getElementById("message").innerHTML = e.target.innerHTML;
			})
		</script>
        <script type="text/javascript" src="../public/assets/js/materialize.min.js"></script>
	</body>
</html>
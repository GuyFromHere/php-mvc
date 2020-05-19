<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- new Article index -->
		<meta charset="utf-8" />
		<title>Add A New Article</title>
		<link rel="stylesheet" href="../public/assets/css/materialize.min.css"/>
		<link rel="stylesheet" type="text/css" href="../public/assets/css/style.css"/>

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


			<form action="/article/save" method="post">

				<div class="input-field col s12">
					<input type="text" id="title" name="title" placeholder="Title"/>
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
							<option value="<?php echo $c['author_id']; ?>">
								<?php echo $c['author_name']; ?>
							</option>

						<?php
								endforeach;
						?>
						<?php endif; ?>
					</select>
				</div>
				<label>Intro</label>
				<div class="input-field col s12">
					<div name="intro" id="inputDivIntro" contenteditable="true" class="editableDiv">
					</div>
					<textarea name="intro" id="intro" class="hiddenText"></textarea>
				</div>
				
				<div class="input-field col s12">
					<div name="body" id="inputDivBody" contenteditable="true" class="editableDiv">
					</div>
					<textarea name="body" id="body" class="hiddenText"></textarea>
				</div>
				<button class="btn waves-effect waves-light" type="submit" id="articleFormSubmit" name="action">Submit</button>
			</form>
		</div>
		<script>

			// Event Handlers
			// Copy contents of input divs to hidden textareas which are used as form inputs.
			document.getElementById("inputDivIntro").addEventListener("input", function(e) {
				document.getElementById("intro").innerHTML = e.target.innerHTML;
			})
			
			document.getElementById("inputDivBody").addEventListener("input", function(e) {
				document.getElementById("body").innerHTML = e.target.innerHTML;
			})

			
		</script>
	</body>
</html>
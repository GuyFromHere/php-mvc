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

		<main>
			<div class="container">
				<?php include HOME . DS . 'includes' . DS . 'error.inc.php'; ?>
				
				<h1>Enter a new article:</h1>				

				<form action="/article/save" method="post">
					<div class="input-field col s12">
						<input type="text" id="title" name="title" />
						<label for="title">Title</label>
					</div>
					
					<div class="input-field col s12">	
						<select id="category" name="categoryList">
							<option value="" disabled selected>Choose a category</option>
							<?php
								if ($categories):
								foreach ($categories as $c): 
							?>
								<option value="<?php echo $c['category_id']; ?>"><?php echo $c['category_name']; ?></option>

							<?php
								endforeach;
								else:
							?>
							<?php endif; ?>
						</select>
					</div>

					<div class="input-field col s12">
						<select id="author" name="authorList">
							<option value="" disabled selected>Choose an author</option>
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
					
					<div class="input-field col s12">
						<label>Intro</label>
						<div name="intro" id="inputDivIntro" name="inputDivIntro" contenteditable="true" class="editableDiv">
						</div>
						<textarea name="intro" id="intro" class="hiddenText"></textarea>
					</div>
					
					<div class="input-field col s12">
						<label>Body</label>
						<div name="body" id="inputDivBody" name="inputDivBody" contenteditable="true" class="editableDiv">
						</div>
						<textarea name="body" id="body" class="hiddenText"></textarea>
					</div>
					<button class="btn waves-effect waves-light" type="submit" id="articleFormSubmit" name="action">Submit</button>
				</form>
			</div>
		</main>
		<?php include HOME . DS . 'includes' . DS . 'footer.inc.php'; ?>
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
		<!-- materialize JS -->
		<script type="text/javascript" src="../public/assets/js/materialize.min.js"></script>
	</body>
</html>
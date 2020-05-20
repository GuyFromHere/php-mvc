<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- new Article index -->
		<meta charset="utf-8" />
		<title>Add A New Article</title>
		<link rel="stylesheet" href="../public/assets/css/materialize.min.css"/>
		<link rel="stylesheet" type="text/css" href="../public/assets/css/style.css"/>
		<link rel="stylesheet" type="text/css" href="../public/assets/css/moztextstyle.css"/>
        <script type="text/javascript" src="../public/assets/js/moztext.js"></script>
	</head>
	<body onload="initDoc();">

		<?php include HOME . DS . 'includes' . DS . 'menu.inc.php'; ?>

		<main>
			<div class="container">
				<?php include HOME . DS . 'includes' . DS . 'error.inc.php'; ?>
				
                <div class="row">
				    <span class="formTitle">Enter a new article:</span>
                </div>
                <form
                    name="compForm"
                    action="/article/save" 
                    method="post"
                    //onsubmit="if(validateMode()){this.myDoc.value=oDoc.innerHTML;return true;}return false;"
                >
				<!-- <form action="/article/save" method="post"> -->
					<div class="row">
						<div class="input-field col s12">
							<input type="text" id="title" name="title" />
							<label for="title">Title</label>
						</div>
					</div>
                    <div class="row">
                        <?php include HOME . DS . 'views' . DS . 'article' . DS . 'categories.inc.php'; ?>
                        <?php include HOME . DS . 'views' . DS . 'article' . DS . 'authors.inc.php'; ?>
                    </div>
					<div class="row">
						<label>Intro</label>
						<div class="input-field col m12 s12">
							<div name="intro" id="inputDivIntro" name="inputDivIntro" contenteditable="true" class="editableDiv">
							</div>
							<textarea name="intro" id="intro" class="hiddenText"></textarea>
						</div>
					</div>
					
					<div class="row">

						<label>Body</label>
                        <div class="input-field col m12 s12">
                            <!-- Text editor lifted from https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Editable_content/Rich-Text_Editing_in_Mozilla -->
                            <?php include HOME . DS . 'views' . DS . 'article' . DS . 'editor' . DS .'editor.inc.php'; ?>
                            <textarea name="body" id="body" class="hiddenText"></textarea>
                            <!-- 
                            <div class="input-field col m12 s12">
                                <div id="inputDivBody" name="inputDivBody" contenteditable="true" class="editableDiv">
                                </div>
                                
                            </div> 
                            -->    	
                        </div>
					</div>
                

                    <div class="row">
					    <button class="btn waves-effect waves-light blue lighten-2" type="submit" name="articleFormSubmit" >Submit</button>
                    </div>
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
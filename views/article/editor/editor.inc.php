<input type="hidden" name="myDoc" />	
<div id="toolBar" class="row">
    <?php include HOME . DS . 'views' . DS . 'article' . DS . 'editor' . DS .'toolbar.inc.php'; ?>
</div>
<div id="inputDivBody" name="inputDivBody" contenteditable="true" class="editableDiv" ><p>Lorem ipsum</p>
</div>
<p id="editMode">
	<input
		type="checkbox"
		name="switchMode"
		id="switchBox"
		onchange="setDocMode(this.checked);"
	/>
	<label for="switchBox">Show HTML</label>
</p>
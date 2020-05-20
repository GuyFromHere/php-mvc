
	<div class="input-field col s12 m6">	
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

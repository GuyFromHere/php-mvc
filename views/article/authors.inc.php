
	<div class="input-field col s12 m6">
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

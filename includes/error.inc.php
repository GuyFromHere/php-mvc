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
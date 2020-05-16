<!DOCTYPE html>

<html lang="en">
	<head>
		<meta charset="utf-8" />
		<!-- contact success -->
		<title><?php echo $title; ?></title>
		<link rel="stylesheet" href="../public/assets/css/materialize.css"/>
		<link rel="stylesheet" href="../public/assets/css/style.css"/>
	</head>
	<body>

		<?php include HOME . DS .  'includes' . DS . 'menu.inc.php'; ?>

		<div class="container">
			<div class="row">
				<h1><?php echo $title; ?></h1>
				<h2>Data stored:</h2>
			</div>

			<?php if (!empty($userData['firstName'])): ?>
			<h3>First Name:</h3>
			<p><?php echo $userData['firstName']; ?></p>
			<?php endif;?>

			<?php if (!empty($userData['lastName'])): ?>
			<h3>Last Name:</h3>
			<p><?php echo $userData['lastName']; ?></p>
			<?php endif;?>

			<h3>E-mail:</h3>
			<p><?php echo $userData['email']; ?></p>

			<h3>Message:</h3>
			<?php echo $userData['message']; ?>
		</div>

	</body>
</html>
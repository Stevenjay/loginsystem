<?php 

require_once 'core/init.php';

?>

<form action="" method="post">
	<div class="field">
		<label for="username">Username</label>
		<input type="text" name="username" id="username" value="<?= escape(Input::get('username')); ?>" autocomplete="off">
	</div>

	<div class="field">
		<label for="password">Enter a password</label>
		<input type="password" name="password" id="password">
	</div>

	<div class="field">
		<label for="password_again">Enter password again</label>
		<input type="password" name="password_again" id="password_again">
	</div>

	<div class="field">
		<label for="namen">Enter your name</label>
		<input type="text" name="name" value="<?= escape(Input::get('name')); ?>" id="name">
	</div>

	<input type="hidden" name="token" value="<?php echo Token::generate(); ?>">
	<input type="submit" value="Register">
</form>
<?php

	class SigninModel extends Model {
		private $_email;
		private $_password;
		
		// check username and password in db
		public function store() {

			console_log('signin model');
			$sql = "SELECT (email, password)
			FROM (users)
			WHERE (email = ?)";

			$data = array(
				$this->_email,
			);

			console_log('signinmodel store data');
			console_log($data);

			$sth = $this->_db->prepare($sql);
			return $sth->execute($data);
		}
	}
?>
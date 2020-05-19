<?php

	class SigninModel extends Model {
		private $_email;
        private $_password;
        
		public function setEmail($email) {
			$this->_email = $email;
		}

		public function setMessage($message) {
			$this->_password = $message;
		}

		public function store() {
			$sql = "SELECT (email, password)
			FROM (users) ";

			$data = array(
				$this->_firstName,
				$this->_lastName,
				$this->_email,
				$this->_password
			);

			$sth = $this->_db->prepare($sql);
			return $sth->execute($data);
		}
	}
?>
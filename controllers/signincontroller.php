<?php

	class SigninController extends Controller {

		public function __construct($model, $action) {
			console_log('signin controller constructor');
			parent::__construct($model, $action);
			$this->_setModel($model);
		}

		
		public function login(){
			console_log('signin controller login');

			if (!isset($_POST['signinFormSubmit'])) {
				header('Location: /signin/index');
			}

			$errors = array();
			$check = true;

			console_log('signin controller email');
			console_log($_POST['email']);

			$email = isset($_POST['email']) ? trim($_POST['email']) : "";
			$password = isset($_POST['password']) ? trim($_POST['password']) : "";

			if (empty($email)) {
				$check = false;
				array_push($errors, "E-mail is required!");
			} else if (!filter_var( $email, FILTER_VALIDATE_EMAIL )) {
				$check = false;
				array_push($errors, "Invalid E-mail!");
			}

			if (empty($password)) {
				$check = false;
				array_push($errors, "Password is required!");
			}

			if (!$check) {
				$this->_setView('index');
				$this->_view->set('title', 'Invalid form data!');
				$this->_view->set('errors', $errors);
				$this->_view->set('formData', $_POST);
				return $this->_view->output();
			}

			try {
				$contact = new SigninModel();
				/* $contact->setEmail($email);
				$contact->setPassword($password);
				$contact->store(); */

				// set view to success when form is submitted
				$this->_setView('success');
				$this->_view->set('title', 'Sign in success!');

				// send user details to success template in userData variable
				$data = array(
				'email' => $email,
				'password' => $password
				);
				$this->_view->set('userData', $data);

			} catch (Exception $e) {
				$this->_setView('index');
				$this->_view->set('title', 'There was an error signing you in!');
				$this->_view->set('formData', $_POST);
				$this->_view->set('saveError', $e->getMessage());
			}

			return $this->_view->output();
		}

		public function index()
		{
			$this->_view->set('title', 'Sign In');
			return $this->_view->output();
		}

	}
?>
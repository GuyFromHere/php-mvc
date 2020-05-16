<?php

	class ArticleController extends Controller {
		public function __construct($model, $action) {
			parent::__construct($model, $action);
			$this->_setModel($model);
		}

		// load article form view
		public function index() {
			try {
				// call getCategories method to populate categories drop down
				$categories = $this->_model->getCategories();
				$this->_view->set('categories', $categories); 
				return $this->_view->output();
			} catch (Exception $e) {
				echo "Application error (loading article form): " . $e->getMessage();
			}
		}

		public function save(){
			if (!isset($_POST['contactFormSubmit'])) {
				header('Location: /php-mvc/article/index');
			}

			$errors = array();
			$check = true;

			$category = isset($_POST['category']) ? trim($_POST['category']) : NULL;
			$title = isset($_POST['title']) ? trim($_POST['title']) : NULL;
			$author = isset($_POST['author']) ? trim($_POST['author']) : "";
			$title = isset($_POST['intro']) ? trim($_POST['intro']) : NULL;
			$body = isset($_POST['body']) ? trim($_POST['body']) : "";

			if (empty($body)) {
				$check = false;
				array_push($errors, "Body is required!");
			} else if (!filter_var( $body, FILTER_VALIDATE_EMAIL )) {
				$check = false;
				array_push($errors, "Invalid E-mail!");
			}

			if (empty($message)) {
				$check = false;
				array_push($errors, "Message is required!");
			}

			if (!$check) {
				$this->_setView('index');
				$this->_view->set('title', 'Invalid form data!');
				$this->_view->set('errors', $errors);
				$this->_view->set('formData', $_POST);
				return $this->_view->output();
			}

			try {

				$contact = new ArticleModel();
				$contact->setTitle($title);
				$contact->setCategory($category);
				$contact->setAuthor($author);
				$contact->setIntro($intro);
				$contact->setBody($body);
				$contact->store();

				$this->_setView('success');
				$this->_view->set('title', 'Store success!');

				$data = array(
				'title' => $title,
				'category' => $category,
				'author' => $author,
				'intro' => $intro,
				'body' => $body
				);

				$this->_view->set('userData', $data);

			} catch (Exception $e) {
				$this->_setView('index');
				$this->_view->set('title', 'There was an error saving the data!');
				$this->_view->set('formData', $_POST);
				$this->_view->set('saveError', $e->getMessage());
			}
			
			return $this->_view->output();
		}
	}
?>
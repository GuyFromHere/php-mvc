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
				// call getAuthors method to populate authors drop down
				$authors = $this->_model->getAuthors();
				$this->_view->set('authors', $authors); 
				return $this->_view->output();
			} catch (Exception $e) {
				echo "Application error (loading article form): " . $e->getMessage();
			}
		}

		public function save(){
			if (!isset($_POST['articleFormSubmit'])) {
				// Redirect on submit
				header('Location: /article/index');
			}

			$errors = array();
			$check = true;

			$title = isset($_POST['title']) ? trim($_POST['title']) : NULL;
			$category = isset($_POST['categoryList']) ? trim($_POST['categoryList']) : NULL;
			$author = isset($_POST['authorList']) ? trim($_POST['authorList']) : NULL;
			$intro = isset($_POST['intro']) ? trim($_POST['intro']) : NULL;
			$body = isset($_POST['body']) ? trim($_POST['body']) : NULL;

			if (empty($title)) {
				$check = false;
				array_push($errors, "Title is required!");
			}
			if (empty($category)) {
				$check = false;
				array_push($errors, "Category is required!");
			}
			if (empty($author)) {
				$check = false;
				array_push($errors, "Author is required!");
			}
			if (empty($intro)) {
				$check = false;
				array_push($errors, "Intro is required!");
			}
			if (empty($body)) {
				$check = false;
				array_push($errors, "Body is required!");
			}

			if (!$check) {
				$this->_setView('index');
				$this->_view->set('title', 'Invalid form data!');
				$this->_view->set('errors', $errors);
				$this->_view->set('formData', $_POST);
				return $this->_view->output();
			}

			try {
				$article = new ArticleModel();
				$article->setTitle($title);
				$article->setCategory($category);
				$article->setAuthor($author);
				$article->setIntro($intro);
				$article->setBody($body);
				$article->store();

				// Set new view when article is successfully submitted.
				$this->_setView('success');
				$this->_view->set('title', 'Article Created!');

				// send article data to success template with articleData variable
				// get author / category name
				$authorName = $this->_model->getAuthorById((int)$author);
				$categoryName = $this->_model->getCategoryById((int)$category);
				$data = array(
					'title' => $title,
					'categoryName' => $categoryName,
					'authorName' => $authorName,
					'intro' => $intro,
					'body' => $body
					);
				$this->_view->set('articleData', $data);


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

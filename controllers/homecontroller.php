<?php	
	class HomeController extends Controller {
		public function __construct($model, $action) {
			parent::__construct($model, $action);
			$this->_setModel($model);
		}

		public function index() {
		try {
            console_log('home controller index()');
            // Set title tag for the new page's header
            $this->_view->set('title', 'Test Page');

            // Call getArticles() method of TestModel and assign results to $articles
            $articles = $this->_model->getArticles();
            // Set $articles in the view
			$this->_view->set('articles', $articles);
            // Return the new view to the bootstrap script
			return $this->_view->output();

			} catch (Exception $e) {
				echo "Application error:" . $e->getMessage();
			}
		}

		public function details($articleId) {
			try {
				$article = $this->_model->getArticleById((int)$articleId);

				if ($article) {
					$this->_view->set('title', $article['title']);
					$this->_view->set('authorName', $article['author_name']);
					$this->_view->set('intro', $article['intro']);
					$this->_view->set('articleBody', $article['body']);
					$this->_view->set('datePublished', $article['date']);
				} else {
					$this->_view->set('title', 'Invalid article ID');
					$this->_view->set('noArticle', true);
				}

			return $this->_view->output();
		
			} catch (Exception $e) {
				echo "Application error:" . $e->getMessage();
			}
		}
	}
?>
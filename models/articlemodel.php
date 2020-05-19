<?php

	class ArticleModel extends Model {
		private $_category;
		private $_title;
		private $_author;
		private $_intro;
		private $_body;
		private $_date;


		// Get categories list from db so we can show it on the new article form
		public function getCategories() {
			$sql = "SELECT * FROM categories c
			ORDER BY c.category_name ASC";

			$this->_setSql($sql);
			$categories = $this->getAll();

			if (empty($categories)) {
				return false;
			}

			return $categories;
		}
		
		// Get authors list from db so we can show it on the new article form
		public function getAuthors() {
			$sql = "SELECT * FROM authors a
			ORDER BY a.author_name ASC";

			$this->_setSql($sql);
			$authors = $this->getAll();

			if (empty($authors)) {
				return false;
			}

			return $authors;
		}

		// Get name of the selected author so it can be displayed
		public function getAuthorById($id) {
			$sql = "SELECT a.author_name FROM authors a
			where a.author_id = ?";

			$this->_setSql($sql);
			$authorName = $this->getRow(array($id));

			if (empty($authorName)) {
				return false;
			}

			return $authorName;
		}
		
		// Get name of the selected category so it can be displayed
		public function getCategoryById($id) {
			$sql = "SELECT c.category_name FROM categories c
			where c.category_id = ?";

			$this->_setSql($sql);
			$categoryName = $this->getRow(array($id));

			if (empty($categoryName)) {
				return false;
			}

			return $categoryName;
		}

		public function setTitle($title) {
			$this->_title = $title;
		}
		
		public function setCategory($category) {
			$this->_category = $category;
		}

		public function setAuthor($author) {
			$this->_author = $author;
		}

		public function setIntro($intro) {
			$this->_intro = $intro;
		}

		public function setBody($body) {
			$this->_body = $body;
		}

		// status flag determines if article will be shown on front page
		// default value is Y...adding method so we can change it with an edit feature later
		public function setStatus($status) {
			$this->_status = $status;
		}

		
		public function store() {
			$sql = "INSERT INTO articles
			(category, author, title, intro, body)
			VALUES (?, ?, ?, ?, ?)";

			$data = array(
				$this->_category,
				$this->_author,
				$this->_title,
				$this->_intro,
				$this->_body
			);

			$sth = $this->_db->prepare($sql);
			return $sth->execute($data);
		}
	}
?>

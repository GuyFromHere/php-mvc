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

		public function setDate($date) {
			$this->_date = $date;
		}

		// status flag determines if article will be shown on front page
		// default value is Y...adding method so we can change it with an edit feature later
		public function setStatus($status) {
			$this->_status = $status;
		}

		public function store() {
			$sql = "INSERT INTO articles
			(category, author, title, intro, body)
			VALUES (?, ?, ?, ?, ?, ?, ?)";

			$data = array(
				$this->_category,
				$this->_title,
				$this->_intro,
				$this->_body,
				$this->_author,
				$this->_date,
				$this->_status
			);

			$sth = $this->_db->prepare($sql);
			return $sth->execute($data);
		}
	}
?>
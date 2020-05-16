<?php

	class ArticlesModel extends Model {
		private $_category;
		private $_title;
		private $_author;
		private $_intro;
		private $_body;
		private $_date;

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
		public function setStatus($status) {
			$this->_status = $status;
		}

		public function store() {
			$sql = "INSERT INTO article
			(category, title, intro, body, author, date, status)
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
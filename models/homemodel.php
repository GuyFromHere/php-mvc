<?php

	class HomeModel extends Model {
		// Get all articles. Loads default home page view.
        public function getArticles()
		{
			$sql = "SELECT a.id, a.title, a.intro, DATE_FORMAT(a.date, '%M %d %Y.') as date, c.category_name, au.author_name
			FROM articles a
			INNER JOIN categories AS c ON a.category = c.category_id
			INNER JOIN authors AS au ON a.author = au.author_id
			ORDER BY a.date DESC";

			$this->_setSql($sql);
			$articles = $this->getAll();

			if (empty($articles)) {
				return false;
			}

			return $articles;
		}

		// Get details for a specific article. 
		public function getArticleById($id) {
			$sql = "SELECT a.title, a.intro, a.body, DATE_FORMAT(a.date, '%M %d %Y.') as date, c.category_name, au.author_name
			FROM articles a
			INNER JOIN categories AS c ON a.category = c.category_id
			INNER JOIN authors AS au ON a.author = au.author_id
			WHERE a.id = ?";

			$this->_setSql($sql);
			$articleDetails = $this->getRow(array($id));

			if (empty($articleDetails)) {
				return false;
			}

			return $articleDetails;
		}
	}

?>
DROP DATABASE simplemvc;
CREATE DATABASE simplemvc;
USE simplemvc;

CREATE TABLE IF NOT EXISTS `contact1` (
`id` INT(10) NOT NULL AUTO_INCREMENT,
`first_name` VARCHAR(50) NULL,
`last_name` VARCHAR(50) NULL,
`email` VARCHAR(50) NOT NULL,
`message` TEXT NOT NULL,
PRIMARY KEY (`id`)
)
COLLATE='utf8_general_ci';

CREATE TABLE `categories`
(
	`category_id` int(11) NOT NULL AUTO_INCREMENT,
	`category_name` varchar(150) NOT NULL,
	PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `articles`
(
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`category` int(11) NOT NULL,
	`title` varchar(255) NOT NULL,
	`intro` text NOT NULL,
	`article` text NOT NULL,
	`date` datetime NOT NULL DEFAULT current_timestamp,
	`status` enum('Y','N') NOT NULL,
	PRIMARY KEY(`id`),
	KEY `FK_articles_categories` (`category`),
	CONSTRAINT `FK_articles_categories` FOREIGN KEY (`category`) 
	REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into categories (category_name)
values ('Sports'),('Entertainment'),('Technology'),('Politics');

insert into articles (category, title, intro, article, status)
values (3, 'Dan creates an MVC app using PHP', 'This evening Dan created an MVC app using a PHP tutorial.', 
'Dan made a thing. This is the thing. How does this thing work? This is the thing. Am I working? Thanks Dan.', 'Y');

select * from categories;
select * from articles;
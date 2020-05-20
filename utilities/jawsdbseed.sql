DROP DATABASE IF EXISTS b2bw6z35scmdzdu9;
CREATE DATABASE b2bw6z35scmdzdu9;
USE b2bw6z35scmdzdu9;

CREATE TABLE IF NOT EXISTS `users` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`first_name` VARCHAR(50) NULL,
	`last_name` VARCHAR(50) NULL,
	`email` VARCHAR(50) NOT NULL,
    `password` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`id`)
);


CREATE TABLE IF NOT EXISTS `contact` (
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

CREATE TABLE `authors`
(
	`author_id` int(11) NOT NULL AUTO_INCREMENT,
	`author_name` varchar(150) NOT NULL,
	PRIMARY KEY (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `articles`
(
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`category` int(11) NOT NULL,
	`title` varchar(255) NOT NULL,
	`intro` text NOT NULL,
	`body` text NOT NULL,
    `author` int(11) NOT NULL,
	`date` datetime NOT NULL DEFAULT current_timestamp,
	`status` enum('Y','N') NOT NULL DEFAULT 'Y',
	PRIMARY KEY(`id`),
	KEY `FK_articles_categories` (`category`),
	CONSTRAINT `FK_articles_categories` FOREIGN KEY (`category`) 
	REFERENCES `categories` (`category_id`),
    KEY `FK_articles_authors` (`author`),
    CONSTRAINT `FK_articles_authors` FOREIGN KEY (`author`) 
	REFERENCES `authors` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into authors (author_name)
values ('Dan Dismuke'), ('Albert Einstein'), ('Mark Twain');

insert into categories (category_name)
values ('Sports'),('Entertainment'),('Technology'),('Politics');

insert into articles (category, author, title, intro, body)
values (3, 1, 'New article', 'Dan made a thing.', 
'Dan made a thing. This is the thing. How does this thing work? Am I working? Thanks Dan.');

select * from articles;
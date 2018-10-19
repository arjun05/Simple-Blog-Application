/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.6.21 : Database - blog_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`blog_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `blog_db`;

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `comments` */

/*Table structure for table `posts` */

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `post` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `posts` */

insert  into `posts`(`post_id`,`post_title`,`post`,`date_added`) values (17,'CSS ','\r\nCSS is a language that describes the style of an HTML document.\r\n\r\nCSS describes how HTML elements should be displayed.\r\n\r\nThis tutorial will teach you CSS from basic to advanced.\r\n','2018-10-19 13:38:31'),(18,'JavaScript ','JavaScript is the programming language of HTML and the Web.\r\n\r\nJavaScript is easy to learn.\r\n\r\nThis tutorial will teach you JavaScript from basic to advanced.\r\n','2018-10-19 13:38:51'),(19,'SQL ','SQL is a standard language for storing, manipulating and retrieving data in databases.\r\n\r\nOur SQL tutorial will teach you how to use SQL in: MySQL, SQL Server, MS Access, Oracle, Sybase, Informix, Postgres, and other database systems.\r\n','2018-10-19 13:39:20'),(20,'PHP','PHP is a server scripting language, and a powerful tool for making dynamic and interactive Web pages.\r\n\r\nPHP is a widely-used, free, and efficient alternative to competitors such as Microsoft\'s ASP.\r\n','2018-10-19 13:39:35'),(21,'Bootstrap','Bootstrap is the most popular HTML, CSS, and JavaScript framework for developing responsive, mobile-first websites.\r\n\r\nBootstrap is completely free to download and use!','2018-10-19 13:41:47'),(22,'jQuery ','jQuery is a JavaScript Library.\r\n\r\njQuery greatly simplifies JavaScript programming.\r\n\r\njQuery is easy to learn.\r\n','2018-10-19 13:42:07');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(4) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`user_id`,`email`,`username`,`password`) values (1,'rjn.june@gmail.com','admin','D033E22AE348AEB5660FC2140AEC35850C4DA997');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

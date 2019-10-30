/**
sql
*/

CREATE DATABASE cakephp_blog;
USE cakephp_blog;

CREATE TABLE articles (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(50),
  body TEXT,
  created DATETIME DEFAULT NULL,
  modified DATETIME DEFAULT NULL
);

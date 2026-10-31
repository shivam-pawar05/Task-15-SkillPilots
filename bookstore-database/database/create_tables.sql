CREATE DATABASE IF NOT EXISTS bookstore_db;
USE bookstore_db;

CREATE TABLE authors (
  author_id INT AUTO_INCREMENT PRIMARY KEY,
  author_name VARCHAR(100) NOT NULL,
  country VARCHAR(50)
);

CREATE TABLE books (
  book_id INT AUTO_INCREMENT PRIMARY KEY,
  author_id INT NOT NULL,
  title VARCHAR(150) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  quantity INT DEFAULT 0,
  FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

CREATE TABLE sales (
  sale_id INT AUTO_INCREMENT PRIMARY KEY,
  book_id INT NOT NULL,
  quantity_sold INT NOT NULL,
  sale_date DATE NOT NULL,
  FOREIGN KEY (book_id) REFERENCES books(book_id)
);

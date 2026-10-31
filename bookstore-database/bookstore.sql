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

INSERT INTO authors (author_name, country) VALUES
('Chetan Bhagat', 'India'),
('R.K. Narayan', 'India'),
('J.K. Rowling', 'United Kingdom');

INSERT INTO books (author_id, title, price, quantity) VALUES
(1, 'Five Point Someone', 250.00, 20),
(1, '2 States', 300.00, 15),
(2, 'Malgudi Days', 200.00, 25),
(2, 'The Guide', 350.00, 10),
(3, 'Harry Potter', 500.00, 30);

INSERT INTO sales (book_id, quantity_sold, sale_date) VALUES
(1, 2, '2026-10-01'),
(2, 3, '2026-10-02'),
(3, 5, '2026-10-03'),
(4, 1, '2026-10-04'),
(5, 4, '2026-10-05');

SELECT b.title, a.author_name, b.price, b.quantity
FROM books b JOIN authors a ON b.author_id = a.author_id;

SELECT b.title, s.quantity_sold, s.sale_date
FROM sales s JOIN books b ON s.book_id = b.book_id;

SELECT b.title, SUM(s.quantity_sold * b.price) AS total_sales
FROM books b JOIN sales s ON b.book_id = s.book_id
GROUP BY b.book_id, b.title;

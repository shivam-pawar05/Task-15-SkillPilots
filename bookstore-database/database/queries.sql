USE bookstore_db;

SELECT * FROM authors;
SELECT * FROM books;
SELECT * FROM sales;

-- Books with author names
SELECT b.book_id, b.title, a.author_name, b.price, b.quantity
FROM books b
INNER JOIN authors a ON b.author_id = a.author_id;

-- Sales with book names
SELECT b.title, s.quantity_sold, s.sale_date
FROM sales s
INNER JOIN books b ON s.book_id = b.book_id;

-- Total sales amount per book
SELECT b.title, SUM(s.quantity_sold * b.price) AS total_sales
FROM books b
INNER JOIN sales s ON b.book_id = s.book_id
GROUP BY b.book_id, b.title;

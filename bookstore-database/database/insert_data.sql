USE bookstore_db;

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

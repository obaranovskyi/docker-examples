-- Create the authors table
CREATE TABLE authors (
    author_id SERIAL PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL
);

-- Create the genres table
CREATE TABLE genres (
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(50) NOT NULL
);

-- Create the publishers table
CREATE TABLE publishers (
    publisher_id SERIAL PRIMARY KEY,
    publisher_name VARCHAR(100) NOT NULL
);

-- Create the languages table
CREATE TABLE languages (
    language_id SERIAL PRIMARY KEY,
    language_name VARCHAR(50) NOT NULL
);

-- Create the formats table
CREATE TABLE formats (
    format_id SERIAL PRIMARY KEY,
    format_name VARCHAR(50) NOT NULL
);

-- Create the books table
CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INT REFERENCES authors(author_id),
    genre_id INT REFERENCES genres(genre_id),
    publisher_id INT REFERENCES publishers(publisher_id),
    language_id INT REFERENCES languages(language_id),
    format_id INT REFERENCES formats(format_id),
    publication_year INT,
    price DECIMAL(10, 2) NOT NULL
);

-- Create the customers table
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    address VARCHAR(255) NOT NULL
);

-- Create the orders table
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    order_date DATE NOT NULL
);

-- Create the order_items table
CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    book_id INT REFERENCES books(book_id),
    quantity INT NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL
);

INSERT INTO authors (author_name) VALUES 
    ('John Doe'),
    ('Jane Smith'),
    ('Michael Brown'),
    ('Emily Johnson'),
    ('Robert Davis'),
    ('Sarah White'),
    ('David Miller'),
    ('Olivia Wilson'),
    ('William Taylor'),
    ('Emma Anderson');

INSERT INTO genres (genre_name) VALUES 
    ('Fiction'),
    ('Non-fiction'),
    ('Mystery'),
    ('Science Fiction'),
    ('Romance'),
    ('Thriller'),
    ('Biography'),
    ('Fantasy'),
    ('History'),
    ('Self-Help');

INSERT INTO publishers (publisher_name) VALUES 
    ('ABC Publications'),
    ('XYZ Books'),
    ('123 Publishers'),
    ('Bestseller Press'),
    ('Epic Publishing'),
    ('Infinite Books'),
    ('Global Print'),
    ('New Horizon Publishers'),
    ('Silverleaf Publishing'),
    ('Golden Words');

INSERT INTO languages (language_name) VALUES 
    ('English'),
    ('Spanish'),
    ('French'),
    ('German'),
    ('Italian'),
    ('Chinese'),
    ('Japanese'),
    ('Ukraine'),
    ('Arabic'),
    ('Portuguese');

INSERT INTO formats (format_name) VALUES 
    ('Hardcover'),
    ('Paperback'),
    ('E-book'),
    ('Audiobook'),
    ('Magazine'),
    ('Audio CD'),
    ('Kindle'),
    ('Nook'),
    ('Large Print'),
    ('Interactive E-book');

INSERT INTO books (title, author_id, genre_id, publisher_id, language_id, format_id, publication_year, price) VALUES 
   ('Book 1', 1, 1, 1, 1, 1, 2019, 24.99),
   ('Book 2', 2, 2, 2, 2, 2, 2020, 19.99),
   ('Book 3', 3, 3, 3, 3, 3, 2018, 29.99),
   ('The Adventure Begins', 4, 4, 4, 4, 1, 2021, 35.99),
   ('Echoes of Eternity', 5, 5, 5, 5, 2, 2017, 18.99),
   ('Whispers in the Wind', 6, 6, 6, 6, 3, 2022, 27.99),
   ('Hidden Secrets', 7, 7, 7, 7, 1, 2016, 22.99),
   ('Beyond the Stars', 8, 8, 8, 8, 2, 2015, 31.99),
   ('The Enchanted Garden', 9, 9, 9, 9, 3, 2023, 26.99),
   ('Mysteries Unveiled', 10, 10, 10, 10, 1, 2020, 29.99);

INSERT INTO customers (customer_name, email, address) VALUES 
   ('Alice Johnson', 'alice@example.com', '123 Main St, Cityville'),
   ('Bob Williams', 'bob@example.com', '456 Oak St, Townsville'),
   ('Charlie Davis', 'charlie@example.com', '789 Pine St, Villagetown'),
   ('Diana Smith', 'diana@example.com', '567 Elm St, Hamletville'),
   ('Edward Brown', 'edward@example.com', '890 Birch St, Countryside'),
   ('Fiona Miller', 'fiona@example.com', '234 Cedar St, Suburbia'),
   ('George Wilson', 'george@example.com', '678 Maple St, Riverside'),
   ('Helen Taylor', 'helen@example.com', '901 Walnut St, Lakeside'),
   ('Ivan Martinez', 'ivan@example.com', '345 Pine St, Mountainside'),
   ('Jennifer Lee', 'jennifer@example.com', '678 Oak St, Hilltop');

INSERT INTO orders (customer_id, order_date) VALUES 
   (1, '2024-01-09'),
   (2, '2024-01-10'),
   (3, '2024-01-11'),
   (4, '2024-01-12'),
   (5, '2024-01-13'),
   (6, '2024-01-14'),
   (7, '2024-01-15'),
   (8, '2024-01-16'),
   (9, '2024-01-17'),
   (10, '2024-01-18');

INSERT INTO order_items (order_id, book_id, quantity, total_price) VALUES 
   (1, 1, 2, 49.98),
   (2, 2, 1, 19.99),
   (3, 3, 3, 89.97),
   (4, 4, 1, 35.99),
   (5, 5, 2, 37.98),
   (6, 6, 1, 27.99),
   (7, 7, 3, 68.97),
   (8, 8, 2, 63.98),
   (9, 9, 1, 26.99),
   (10, 10, 4, 119.96);

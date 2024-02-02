-- Create a new database
-- CREATE DATABASE bookstore;

-- Connect to the new database
-- (Connect manually through your SQL client)

-- Create authors table
CREATE TABLE authors (
    author_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    nationality VARCHAR(50)
);

-- Create publishers table
CREATE TABLE publishers (
    publisher_id SERIAL PRIMARY KEY,
    publisher_name VARCHAR(100) NOT NULL,
    address VARCHAR(255),
    phone VARCHAR(20)
);

-- Create books table
CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    publication_date DATE,
    author_id INTEGER REFERENCES authors(author_id),
    publisher_id INTEGER REFERENCES publishers(publisher_id)
);

-- Insert data into authors table
INSERT INTO authors (first_name, last_name, birth_date, nationality) VALUES
    ('John', 'Doe', '1980-01-15', 'American'),
    ('Jane', 'Smith', '1975-05-20', 'British'),
    ('Robert', 'Johnson', '1990-08-10', 'Canadian');

-- Insert data into publishers table
INSERT INTO publishers (publisher_name, address, phone) VALUES
    ('ABC Publications', '123 Main St, Cityville', '555-1234'),
    ('XYZ Books', '456 Oak St, Townsville', '555-5678'),
    ('123 Press', '789 Pine St, Villagetown', '555-9876');

-- Insert data into books table
INSERT INTO books (title, publication_date, author_id, publisher_id) VALUES
    ('The Great Novel', '2020-03-25', 1, 1),
    ('Mystery of the Lost Keys', '2018-07-12', 2, 2),
    ('Programming 101', '2021-05-08', 3, 3);

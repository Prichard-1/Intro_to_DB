--1.create database
CREATE DATABASE IF NOT EXISTS alx_book_store;

--2.use the database
USE alx_book_store;

--3. create the authors tables

CREATE TABLE Authors(
	author_id INT PRIMARY KEY,
	author_name varchar(215)
);

--4 create books table
 CREATE TABLE Books(
	book_id INT PRIMARY KEY,
	title VARCHAR(130),
	author_id INT,
	price DOUBLE,
	publication_date DATE,
	FOREIGN KEY(author_id) REFERENCES Authors(author_id)
);

--5 create customer table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

--6. create orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

--7. create order details

CREATE TABLE Order_details(
	orderdetailid INT PRIMARY KEY,
	order_id INT,
	Book_id INT
	quantity DOUBLE,
        FOREIGN KEY(order_id) REFRERENCES Orders(order_id),
        FOREIGN KEY(book_id)  REFERENCES Books(book_id)
);



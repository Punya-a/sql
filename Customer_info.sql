CREATE DATABASE Customer_info;
USE Customer_info;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT CHECK (age >= 18),
    city VARCHAR(50) DEFAULT 'Mysuru');
    
   DESC  Customers;
INSERT INTO Customers VALUES (1, 'Arjun', 'arjun@gmail.com', 22, 'Bangalore');
INSERT INTO Customers (customer_id, name, email, age) VALUES (1, 'Sneha', 'sneha@gmail.com', 25);
-- 10:56:25	INSERT INTO Customers (customer_id, name, email, age) VALUES (1, 'Sneha', 'sneha@gmail.com', 25)	Error Code: 1062. Duplicate entry '1' for key 'customers.PRIMARY'	0.00042 sec

SELECT * FROM Customers;

CREATE TABLE Menu (
    item_id INT PRIMARY KEY UNIQUE,
    item_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) CHECK (price > 0),
    category VARCHAR(30) DEFAULT 'Veg');
    
    DESC Menu;
    
    INSERT INTO Menu VALUES (1, 'Paneer Butter Masala', 250, 'Veg');
INSERT INTO Menu VALUES (2, 'Chicken Biryani', 180, 'Non-Veg');
INSERT INTO Menu VALUES (3, 'Masala Dosa', 000, 'Veg');
-- 11:54:30	INSERT INTO Menu VALUES (3, 'Masala Dosa', 000, 'Veg')	Error Code: 3819. Check constraint 'menu_chk_1' is violated.	0.00043 sec

INSERT INTO Menu VALUES (3, 'Masala Dosa', 160, 'Veg');

SELECT * FROM Menu;

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(50) NOT NULL,
    price DECIMAL(8,2) CHECK (price > 0),
    genre VARCHAR(30) DEFAULT 'General',
    published_year INT CHECK (published_year > 1900));

DESC Books;

INSERT INTO Books VALUES (1, 'Java Basics', 'James Gosling', 500, 'Programming', 2015);
INSERT INTO Books VALUES (2, 'Python Guide', 'Guido', 450, 'Programming', 2018);
INSERT INTO Books VALUES (3, 'Data Science', 'Andrew Ng', 700, 'AI', 1800);

--  11:58:54	INSERT INTO Books VALUES (3, 'Data Science', 'Andrew Ng', 700, 'AI', 1800)	Error Code: 3819. Check constraint 'books_chk_2' is violated.	0.00029 sec
INSERT INTO Books VALUES (3, 'Data Science', 'Andrew Ng', 700, 'AI', 2000);

SELECT * FROM Books;

CREATE TABLE FoodOrders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    food_item VARCHAR(50) NOT NULL,
    quantity INT CHECK (quantity > 0),
    price DECIMAL(8,2) CHECK (price > 0),
    order_date DATE DEFAULT (CURRENT_DATE));
    
    DESC FoodOrders;
    
INSERT INTO FoodOrders VALUES (1, 'Ramesh', 'Pizza', 2, 300, '2026-04-16');
INSERT INTO FoodOrders (order_id, customer_name, food_item, quantity, price) 
VALUES (2, 'Sita', 'Burger', 1, 120);

SELECT * FROM FoodOrders;

CREATE TABLE RestaurantBills (
    bill_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    table_number INT CHECK (table_number > 0),
    total_amount DECIMAL(8,2) CHECK (total_amount > 0),
    payment_method VARCHAR(20) DEFAULT 'Cash',
    rating INT CHECK (rating BETWEEN 1 AND 5)
);

DESC RestaurantBills;

INSERT INTO RestaurantBills VALUES (1, 'Rahul', 5, 850, 'UPI', 4);
INSERT INTO RestaurantBills (bill_id, customer_name, table_number, total_amount, rating) 
VALUES (2, 'Anita', 3, 450, 8);

-- 12:06:55	INSERT INTO RestaurantBills (bill_id, customer_name, table_number, total_amount, rating)  VALUES (2, 'Anita', 3, 450, 8)	Error Code: 3819. Check constraint 'restaurantbills_chk_3' is violated.	0.00051 sec


INSERT INTO RestaurantBills (bill_id, customer_name, table_number, total_amount, rating) 
VALUES (2, 'Anita', 3, 450, 5);

SELECT * FROM RestaurantBills;









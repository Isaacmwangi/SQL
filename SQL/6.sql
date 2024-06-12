-- Creating a database Question6
CREATE DATABASE Question6;
USE Question6;

-- Create the customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name NVARCHAR(50)
);

-- Create the sales table
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    sale_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Insert sample data into customers table
INSERT INTO Customers (customer_id, customer_name)
VALUES 
    (1, 'Alice'),
    (2, 'Bob'),
    (3, 'Charlie');

-- Insert sample data into sales table
INSERT INTO Sales (sale_id, customer_id, sale_amount)
VALUES 
    (1, 1, 500),
    (2, 1, 300),
    (3, 2, 400),
    (4, 2, 200);

-- Query to get total sales for each customer, including those with no sales
SELECT c.customer_name, ISNULL(SUM(s.sale_amount), 0) AS total_sales
FROM Customers c
LEFT JOIN Sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_name;

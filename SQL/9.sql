CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE
);

-- Insert sample data into orders table
INSERT INTO Orders (order_id, customer_id, order_date)
VALUES 
    (2043, 1, '2023-06-01'),
    (2044, 2, '2023-06-02'),
    (2045, 3, '2023-06-03'),
    (2046, 1, '2023-06-04');

-- Query to update the order date for order number 2045
BEGIN TRANSACTION;

UPDATE Orders
SET order_date = '2023-07-23'
WHERE order_id = 2045;

COMMIT;

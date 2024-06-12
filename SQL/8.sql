--lets create a database and name it Question8
create database Question8;
use Question8

-- then we can create the employees table with manager_id
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name NVARCHAR(50),
    manager_id INT NULL
);

-- insert the data into employees table
INSERT INTO Employees (employee_id, employee_name, manager_id)
VALUES 
    (1, 'John Doe', NULL),
    (2, 'Jane Smith', 1),
    (3, 'Alice Brown', 1),
    (4, 'Bob Johnson', 2),
    (5, 'Charlie Black', NULL);

-- Query to get employees without an assigned manager
SELECT employee_name
FROM Employees
WHERE manager_id IS NULL;

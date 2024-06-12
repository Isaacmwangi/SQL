--creating a new database adn naming it Question7
create database Question7;
use Question7;
-- Create the departments table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name NVARCHAR(50)
);

-- Create the employees table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name NVARCHAR(50),
    department_id INT,
    salary DECIMAL(10, 2),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Insert sample data into departments table
INSERT INTO Departments (department_id, department_name)
VALUES 
    (1, 'HR'),
    (2, 'Finance');

-- Insert sample data into employees table
INSERT INTO Employees (employee_id, employee_name, department_id, salary)
VALUES 
    (1, 'John Doe', 1, 100000),
    (2, 'Jane Smith', 1, 95000),
    (3, 'Alice Brown', 1, 90000),
    (4, 'Bob Johnson', 1, 85000),
    (5, 'Charlie Black', 1, 80000),
    (6, 'David Green', 1, 75000),
    (7, 'Eve White', 2, 110000);

-- Query to get departments with more than five employees and their average salary
SELECT d.department_name, AVG(e.salary) AS average_salary
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING COUNT(e.employee_id) > 5;

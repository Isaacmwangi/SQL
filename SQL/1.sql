
--creating a database Question1
CREATE DATABASE Question1;
USE Question1;

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name NVARCHAR(50),
    department_id INT,
    salary DECIMAL(10, 2)
);

INSERT INTO Employees (employee_id, employee_name, department_id, salary)
VALUES 
    (1, 'John Doe', 1, 100000),
    (2, 'Jane Smith', 1, 95000),
    (3, 'Alice Brown', 2, 120000),
    (4, 'Bob Johnson', 2, 110000),
    (5, 'Charlie Black', 3, 80000);

	-- Query to find the names of all employees who work in the same department as the employee with the highest salary
SELECT employee_name
FROM Employees
WHERE department_id = (
    SELECT TOP 1 department_id
    FROM Employees
    ORDER BY salary DESC
);

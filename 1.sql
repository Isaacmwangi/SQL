-- Query to find the names of all employees who work in the same department as the employee with the highest salary
SELECT employee_name
FROM Employees
WHERE department_id = (
    SELECT TOP 1 department_id
    FROM Employees
    ORDER BY salary DESC
);

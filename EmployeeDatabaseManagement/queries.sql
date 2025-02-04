SELECT E.EmpID, E.FirstName, E.LastName, D.DeptName
FROM Employees E
JOIN Departments D ON E.DeptID = D.DeptID;

SELECT * FROM Employees WHERE HireDate > '2021-01-01';

SELECT D.DeptName, SUM(S.Salary) AS TotalSalary
FROM Salaries S
JOIN Employees E ON S.EmpID = E.EmpID
JOIN Departments D ON E.DeptID = D.DeptID
GROUP BY D.DeptName;

UPDATE Salaries 
SET Salary = 80000
WHERE EmpID = 3;

DELETE FROM Employees WHERE EmpID = 2;

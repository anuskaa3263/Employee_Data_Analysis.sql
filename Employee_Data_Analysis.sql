CREATE DATABASE CompanyDB;
USE CompanyDB;
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100),
    Department VARCHAR(50),
    City VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);
INSERT INTO Employees (EmpID, EmpName, Department, City, Salary, HireDate) VALUES
(101, 'Rahul Mehta', 'Sales', 'Delhi', 55000, '2020-04-12'),
(102, 'Priya Sharma', 'HR', 'Mumbai', 62000, '2019-09-25'),
(103, 'Aman Singh', 'IT', 'Bengaluru', 72000, '2021-03-10'),
(104, 'Neha Patel', 'Sales', 'Delhi', 48000, '2022-01-14'),
(105, 'Karan Joshi', 'Marketing', 'Pune', 45000, '2018-07-22'),
(106, 'Divya Nair', 'IT', 'Chennai', 81000, '2019-12-11'),
(107, 'Raj Kumar', 'HR', 'Delhi', 60000, '2020-05-28'),
(108, 'Simran Kaur', 'Finance', 'Mumbai', 58000, '2021-08-03'),
(109, 'Arjun Reddy', 'IT', 'Hyderabad', 70000, '2022-02-18'),
(110, 'Anjali Das', 'Sales', 'Kolkata', 51000, '2023-01-15');
SELECT * FROM Employees;
SELECT * 
FROM Employees 
WHERE Department IN ('IT', 'HR');
SELECT * 
FROM Employees 
WHERE Department IN ('Sales', 'IT', 'Finance');
SELECT * 
FROM Employees 
WHERE Department IN ('Sales', 'IT', 'Finance');
SELECT * 
FROM Employees 
WHERE Department IN ('Sales', 'IT', 'Finance');
SELECT * 
FROM Employees 
WHERE Department IN ('Sales', 'IT', 'Finance');








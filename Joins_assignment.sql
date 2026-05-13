CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50)
);
INSERT INTO Customers VALUES 
(1, 'John Smith', 'New York'),
(2, 'Mary Johnson', 'Chicago'),
(3, 'Peter Adams', 'Los Angeles'),
(4, 'Nancy Miller', 'Houston'),
(5, 'Robert White', 'Miami');
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Amount INT
);
INSERT INTO Orders VALUES 
(101, 1, '2024-10-01', 250),
(102, 2, '2024-10-05', 300),
(103, 1, '2024-10-07', 150),
(104, 3, '2024-10-10', 450),
(105, 6, '2024-10-12', 400);
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
SELECT DISTINCT 
    c.CustomerID, 
    c.CustomerName, 
    c.City
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID;
SELECT 
    c.CustomerID, 
    c.CustomerName, 
    o.OrderID, 
    o.OrderDate, 
    o.Amount
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID;
SELECT 
    o.OrderID, 
    o.Amount, 
    c.CustomerID, 
    c.CustomerName
FROM Customers c
RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID;
SELECT c.CustomerName, o.OrderID, o.Amount
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID

UNION

SELECT c.CustomerName, o.OrderID, o.Amount
FROM Customers c
RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID;
SELECT c.CustomerID, c.CustomerName
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;
SELECT DISTINCT p.CustomerID
FROM Payments p
LEFT JOIN Orders o ON p.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;
SELECT c.CustomerName, o.OrderID
FROM Customers c
CROSS JOIN Orders o;
SELECT 
    c.CustomerName, 
    o.Amount AS OrderAmount, 
    p.Amount AS PaymentAmount
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
LEFT JOIN Payments p ON c.CustomerID = p.CustomerID;
SELECT DISTINCT c.CustomerName
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
INNER JOIN Payments p ON c.CustomerID = p.CustomerID;

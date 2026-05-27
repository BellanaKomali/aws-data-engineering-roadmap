-- FULL OUTER JOIN
SELECT c.CustomerID, c.Name, o.OrderID, o.Amount
FROM Customers c
FULL OUTER JOIN Orders o ON c.CustomerID = o.CustomerID;

-- CROSS JOIN
SELECT c.Name, p.ProductName
FROM Customers c
CROSS JOIN Products p;

-- SELF JOIN
SELECT e.EmployeeID, e.Name, m.Name AS ManagerName
FROM Employees e
LEFT JOIN Employees m ON e.ManagerID = m.EmployeeID;

-- Subquery: Customers with orders above average
SELECT CustomerID, Name
FROM Customers
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Orders
    WHERE Amount > (SELECT AVG(Amount) FROM Orders)
);

-- CTE: Top 2 orders per customer
WITH RankedOrders AS (
    SELECT CustomerID, OrderID, Amount,
           ROW_NUMBER() OVER (PARTITION BY CustomerID ORDER BY Amount DESC) AS rn
    FROM Orders
)
SELECT * FROM RankedOrders WHERE rn <= 2;

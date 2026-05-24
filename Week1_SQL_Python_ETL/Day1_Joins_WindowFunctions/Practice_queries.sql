-- INNER JOIN: Customers with Orders
SELECT c.CustomerID, c.Name, o.OrderID, o.Amount
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID;

-- LEFT JOIN: Include Customers Without Orders
SELECT c.CustomerID, c.Name, o.OrderID, o.Amount
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID;

-- Manager → Employee mapping (self join)
SELECT e.manager_id,
       CONCAT(m.first_name, ' ', m.last_name) AS Manager,
       CONCAT(e.first_name, ' ', e.last_name) AS Employee
FROM employees e
JOIN employees m 
     ON e.manager_id = m.employee_id
ORDER BY Manager, Employee;

-- RANK(): Top Orders per Customer
SELECT CustomerID, OrderID, Amount,
       RANK() OVER (PARTITION BY CustomerID ORDER BY Amount DESC) AS rank
FROM Orders;

-- ROW_NUMBER(): Sequential Order Tracking
SELECT CustomerID, OrderID, OrderDate,
       ROW_NUMBER() OVER (PARTITION BY CustomerID ORDER BY OrderDate) AS seq
FROM Orders;

-- LAG(): Compare Current vs Previous Order
SELECT CustomerID, OrderID, Amount,
       LAG(Amount, 1) OVER (PARTITION BY CustomerID ORDER BY OrderDate) AS prev_amount
FROM Orders;

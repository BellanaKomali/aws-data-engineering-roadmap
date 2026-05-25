-- Index Creation
CREATE INDEX idx_customer_id ON Orders(CustomerID);

-- Query Plan Analysis
EXPLAIN SELECT OrderID, Amount FROM Orders WHERE CustomerID = 101;

-- Normalization Example
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    City VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Denormalization Example
CREATE TABLE Orders_Denormalized (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    CustomerName VARCHAR(100),
    Amount DECIMAL(10,2)
);
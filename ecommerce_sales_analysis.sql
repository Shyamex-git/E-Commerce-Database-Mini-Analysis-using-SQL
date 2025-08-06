
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255),
    ContactName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    PostalCode VARCHAR(255),
    Country VARCHAR(255)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    LastName VARCHAR(255),
    FirstName VARCHAR(255),
    BirthDate DATE,
    Photo VARCHAR(255),
    Notes TEXT
);

CREATE TABLE Shippers (
    ShipperID INT PRIMARY KEY,
    ShipperName VARCHAR(255),
    Phone VARCHAR(255)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    EmployeeID INT,
    OrderDate DATE,
    ShipperID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ShipperID) REFERENCES Shippers(ShipperID)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    SupplierID INT,
    CategoryID INT,
    Unit VARCHAR(255),
    Price DECIMAL(10, 2)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


-- --------------------------------------------------------
-- ANALYTICAL QUERIES
-- --------------------------------------------------------

SELECT
    Country,
    COUNT(CustomerID) AS NumberOfCustomers
FROM
    Customers
GROUP BY
    Country
ORDER BY
    COUNT(CustomerID) DESC;


SELECT
    e.FirstName,
    e.LastName,
    COUNT(o.OrderID) AS OrdersHandled
FROM
    Employees e
JOIN
    Orders o ON e.EmployeeID = o.EmployeeID
GROUP BY
    e.FirstName,
    e.LastName
ORDER BY
    COUNT(o.OrderID) DESC;


SELECT
    p.ProductName,
    SUM(p.Price * od.Quantity) AS TotalRevenue
FROM
    Products p
JOIN
    OrderDetails od ON p.ProductID = od.ProductID
GROUP BY
    p.ProductName
ORDER BY
    TotalRevenue DESC
LIMIT 10;


SELECT
    s.ShipperName,
    COUNT(o.OrderID) AS NumberOfOrdersShipped
FROM
    Orders o
JOIN
    Shippers s ON o.ShipperID = s.ShipperID
GROUP BY
    s.ShipperName
ORDER BY
    NumberOfOrdersShipped DESC;
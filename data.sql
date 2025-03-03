-- Inserting Sample Suppliers
INSERT INTO Suppliers (Name, ContactName, ContactPhone, Address) VALUES
('ABC Electronics', 'John Doe', '555-1234', '123 Main St, City A'),
('XYZ Supplies', 'Jane Smith', '555-5678', '456 Elm St, City B');

-- Inserting Sample Products
INSERT INTO Products (Name, Category, Price, SupplierID) VALUES
('Laptop', 'Electronics', 1200.00, 1),
('Smartphone', 'Electronics', 800.00, 1),
('Headphones', 'Accessories', 50.00, 2),
('Keyboard', 'Accessories', 30.00, 2);

-- Inserting Sample Stock
INSERT INTO Stock (ProductID, QuantityInStock) VALUES
(1, 50),
(2, 100),
(3, 200),
(4, 150);

-- Inserting Sample Purchases
INSERT INTO Purchases (ProductID, SupplierID, PurchaseDate, Quantity, TotalCost) VALUES
(1, 1, '2025-03-01', 20, 24000.00),
(2, 1, '2025-03-02', 30, 24000.00),
(3, 2, '2025-03-01', 100, 5000.00),
(4, 2, '2025-03-02', 150, 4500.00);

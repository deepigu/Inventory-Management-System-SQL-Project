
### 2. **schema.sql**:
This file defines the structure of the database (tables, relationships, etc.).

```sql
-- Create Suppliers Table
CREATE TABLE Suppliers (
    SupplierID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    ContactName VARCHAR(100),
    ContactPhone VARCHAR(15),
    Address VARCHAR(255)
);

-- Create Products Table
CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    SupplierID INT,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

-- Create Stock Table (for tracking the stock levels of products)
CREATE TABLE Stock (
    ProductID INT,
    QuantityInStock INT,
    PRIMARY KEY (ProductID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Create Purchases Table (tracking products purchased)
CREATE TABLE Purchases (
    PurchaseID INT AUTO_INCREMENT PRIMARY KEY,
    ProductID INT,
    SupplierID INT,
    PurchaseDate DATETIME,
    Quantity INT,
    TotalCost DECIMAL(10, 2),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

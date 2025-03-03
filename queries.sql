-- Query 1: Get a list of all products with their suppliers
SELECT P.Name AS ProductName, P.Category, P.Price, S.Name AS SupplierName
FROM Products P
JOIN Suppliers S ON P.SupplierID = S.SupplierID;

-- Query 2: Get the current stock of each product
SELECT P.Name AS ProductName, ST.QuantityInStock
FROM Products P
JOIN Stock ST ON P.ProductID = ST.ProductID;

-- Query 3: Find the total cost of purchases made from a specific supplier (SupplierID = 1)
SELECT SUM(TotalCost) AS TotalPurchases
FROM Purchases
WHERE SupplierID = 1;

-- Query 4: Get a list of products with their most recent purchase quantity
SELECT P.Name AS ProductName, PU.Quantity AS LatestPurchaseQuantity
FROM Products P
JOIN Purchases PU ON P.ProductID = PU.ProductID
WHERE PU.PurchaseDate = (SELECT MAX(PurchaseDate) FROM Purchases WHERE ProductID = P.ProductID);

-- Query 5: Get the total number of products purchased from each supplier
SELECT S.Name AS SupplierName, SUM(PU.Quantity) AS TotalQuantityPurchased
FROM Purchases PU
JOIN Suppliers S ON PU.SupplierID = S.SupplierID
GROUP BY S.Name;

-- Query 6: Find products that are low in stock (less than 50 items)
SELECT P.Name AS ProductName, ST.QuantityInStock
FROM Products P
JOIN Stock ST ON P.ProductID = ST.ProductID
WHERE ST.QuantityInStock < 50;

-- Query 7: Get the most purchased product (based on total quantity purchased)
SELECT P.Name AS ProductName, SUM(PU.Quantity) AS TotalQuantityPurchased
FROM Purchases PU
JOIN Products P ON PU.ProductID = P.ProductID
GROUP BY P.Name
ORDER BY TotalQuantityPurchased DESC
LIMIT 1;

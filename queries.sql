-- Total sales per product
SELECT p.ProductName, SUM(s.Quantity * p.Price) AS TotalSales
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalSales DESC;

-- Top 3 cities by revenue
SELECT c.City, SUM(s.Quantity * p.Price) AS Revenue
FROM Sales s
JOIN Customers c ON s.CustomerID = c.CustomerID
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY c.City
ORDER BY Revenue DESC
LIMIT 3;

-- Customers with purchases over 5000
SELECT c.Name, SUM(s.Quantity * p.Price) AS TotalSpent
FROM Sales s
JOIN Customers c ON s.CustomerID = c.CustomerID
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY c.Name
HAVING TotalSpent > 5000;

-- Monthly sales trend
SELECT DATE_FORMAT(SaleDate, '%Y-%m') AS Month, SUM(Quantity * Price) AS MonthlyRevenue
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY Month
ORDER BY Month;

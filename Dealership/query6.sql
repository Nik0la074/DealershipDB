-- Лоялни клиенти с повече от една транзакция
USE dealership;
SELECT 
c.CustomerID, 
c.Name, 
c.Email, 
COUNT(ct.TransactionID) AS TransactionCount
FROM Customers c
JOIN CarTransactions ct ON c.CustomerID = ct.CustomerID
GROUP BY c.CustomerID, c.Name, c.Email
HAVING COUNT(ct.TransactionID) > 1;
-- Автомобили, които първо са били наети, а след това купени
USE dealership;
SELECT 
ct1.TransactionID AS RentalTransaction, 
ct2.TransactionID AS SaleTransaction, 
car.Make, 
car.Model, 
c.Name AS CustomerName
FROM CarTransactions ct1
JOIN CarTransactions ct2 ON ct1.CarID = ct2.CarID AND ct1.CustomerID = ct2.CustomerID
JOIN Cars car ON ct1.CarID = car.CarID
JOIN Customers c ON ct1.CustomerID = c.CustomerID
WHERE ct1.TransactionType = 'Наем' AND ct2.TransactionType = 'Продажба' AND ct1.StartDate < ct2.StartDate;

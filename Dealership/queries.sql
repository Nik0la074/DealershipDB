-- 1. Налични автомобили c цена над определена стойност
SELECT Make, Model, Year, Price
FROM Cars
WHERE Status = 'наличен' AND Price > 20000;

-- 2. Брой на транзакциите за всеки автомобил
SELECT car.Make, car.Model, COUNT(ct.TransactionID) AS TotalTransactions
FROM Cars car
LEFT JOIN CarTransactions ct ON car.CarID = ct.CarID
GROUP BY car.Make, car.Model;

-- 3. Oборот през последния месец
SELECT SUM(ct.TotalPrice) AS TotalRevenue
FROM CarTransactions ct
WHERE ct.StartDate >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
AND ct.StartDate < CURDATE();

-- 4. Анулиране на транзакция
UPDATE CarTransactionsquery1
SET Status = 'Анулирана'
WHERE TransactionID = 5;

-- 5. Автомобили, които първо са били наети, а след това купени
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

-- 6. Лоялни клиенти с повече от една транзакция
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

-- 7. Най-наеман или купуван автомобил
SELECT ct.CarID, c.Make, c.Model, c.Year, COUNT(*) AS Transactions
FROM CarTransactions ct
INNER JOIN Cars c ON ct.CarID = c.CarID
GROUP BY ct.CarID, c.Make, c.Model, c.Year
ORDER BY Transactions DESC
LIMIT 1;

--  8. Списък с всички транзакции за конкретен клиент
SELECT 
ct.TransactionID, 
ct.TransactionType, 
ct.StartDate, 
ct.EndDate, 
ct.TotalPrice, 
car.Make, 
car.Model
FROM CarTransactions ct
JOIN Cars car ON ct.CarID = car.CarID
WHERE ct.CustomerID = 1; 

-- 9. Намиране на всички клиенти, които са купили автомобил
SELECT DISTINCT c.CustomerID, c.Name, c.Email
FROM Customers c
JOIN CarTransactions ct ON c.CustomerID = ct.CustomerID
WHERE ct.TransactionType = 'Продажба';

-- 10. Всички коли, които са налични за наем или покупка
SELECT CarID, Make, Model, Year, Price, Status
FROM Cars
WHERE Status = 'Наличен';
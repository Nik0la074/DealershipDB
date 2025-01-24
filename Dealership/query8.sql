--  Списък с всички транзакции за конкретен клиент
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
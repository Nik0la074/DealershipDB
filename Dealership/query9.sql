-- Намиране на всички клиенти, които са купили автомобил
SELECT DISTINCT c.CustomerID, c.Name, c.Email
FROM Customers c
JOIN CarTransactions ct ON c.CustomerID = ct.CustomerID
WHERE ct.TransactionType = 'Продажба';
-- Най-наеман или купуван автомобил
SELECT ct.CarID, c.Make, c.Model, c.Year, COUNT(*) AS Transactions
FROM CarTransactions ct
INNER JOIN Cars c ON ct.CarID = c.CarID
GROUP BY ct.CarID, c.Make, c.Model, c.Year
ORDER BY Transactions DESC
LIMIT 1;
-- Oборот през последния месец
SELECT SUM(ct.TotalPrice) AS TotalRevenue
FROM CarTransactions ct
WHERE ct.StartDate >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
AND ct.StartDate < CURDATE();
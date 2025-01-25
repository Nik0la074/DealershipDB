-- 2. Брой на транзакциите за всеки автомобил
SELECT car.Make, car.Model, COUNT(ct.TransactionID) AS TotalTransactions
FROM Cars car
LEFT JOIN CarTransactions ct ON car.CarID = ct.CarID
GROUP BY car.Make, car.Model;
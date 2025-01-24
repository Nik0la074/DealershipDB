-- Всички коли, които са налични за наем или покупка
SELECT CarID, Make, Model, Year, Price, Status
FROM Cars
WHERE Status = 'Наличен';
-- Налични автомобили c цена над определена стойност
SELECT Make, Model, Year, Price
FROM Cars
WHERE Status = 'наличен' AND Price > 20000;

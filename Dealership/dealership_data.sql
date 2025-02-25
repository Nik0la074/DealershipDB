INSERT INTO Customers (Name, Email, PhoneNumber, Address)
VALUES
    ('Иван Иванов', 'ivan@example.com', '0888123456', 'ул. Васил Левски 10'),
    ('Мария Петрова', 'maria@example.com', '0899123456', 'ул. Христо Ботев 15'),
    ('Георги Георгиев', 'george@example.com', '0878123456', 'ул. Алеко Константинов 5'),
    ('Елена Василева', 'elena@example.com', '0888125678', 'ул. Раковски 22'),
    ('Петър Димитров', 'peter@example.com', '0898321456', 'ул. Шипка 3'),
    ('Силвия Николова', 'silvia@example.com', '0877543211', 'ул. Витоша 100'),
    ('Димитър Колев', 'dimitar@example.com', '0889234567', 'ул. Пирин 45'),
    ('Анна Христова', 'anna@example.com', '0899123321', 'ул. Искър 8'),
    ('Кирил Стоянов', 'kiril@example.com', '0878321456', 'ул. Тракия 19'),
    ('Росица Иванова', 'rositsa@example.com', '0888567890', 'ул. Левски 50');

INSERT INTO Cars (Make, Model, Year, Price, Status)
VALUES
    ('Toyota', 'Corolla', 2020, 15000.00, 'наличен'),
    ('BMW', 'X5', 2019, 30000.00, 'наличен'),
    ('Audi', 'A3', 2021, 20000.00, 'наличен'),
    ('Mercedes', 'C-Class', 2020, 28000.00, 'наличен'),
    ('Volkswagen', 'Golf', 2018, 12000.00, 'наличен'),
    ('Honda', 'Civic', 2022, 18000.00, 'наличен'),
    ('Ford', 'Focus', 2017, 10000.00, 'наличен'),
    ('Hyundai', 'Elantra', 2021, 17000.00, 'наличен'),
    ('Nissan', 'Qashqai', 2020, 25000.00, 'наличен'),
    ('Tesla', 'Model 3', 2021, 40000.00, 'наличен');
    
INSERT INTO CarTransactions (CarID, CustomerID, TransactionType, StartDate, EndDate, TotalPrice, Status)
VALUES
    (1, 1, 'Наем', '2025-01-10', '2025-01-15', 1000.00, 'Завършена'), 
    (1, 1, 'Продажба', '2025-01-16', NULL, 15000.00, 'Завършена'),
    (2, 1, 'Наем', '2025-01-11', '2025-01-20', 1000.00, 'Завършена'), 
    (3, 2, 'Наем', '2025-01-12', '2025-01-15', 600.00, 'Завършена'), 
    (4, 3, 'Продажба', '2025-01-15', NULL, 28000.00, 'Завършена'), 
    (5, 4, 'Наем', '2025-01-13', '2025-01-18', 500.00, 'Завършена'), 
    (6, 5, 'Наем', '2025-01-14', '2025-01-20', 700.00, 'Завършена'), 
    (7, 6, 'Продажба', '2025-01-16', NULL, 10000.00, 'Завършена'), 
    (8, 7, 'Наем', '2025-01-17', '2025-01-22', 850.00, 'Завършена'), 
    (9, 8, 'Наем', '2025-01-18', '2025-01-23', 1200.00, 'Завършена'), 
    (10, 9, 'Продажба', '2025-01-19', NULL, 40000.00, 'Завършена'); 
    
INSERT INTO Payments (CustomerID, TransactionID, PaymentDate, Amount, PaymentMethod)
VALUES
    (1, 1, '2025-01-10', 1000.00, 'Банков превод'), 
    (1, 2, '2025-01-16', 15000.00, 'Кредитна карта'), 
    (2, 3, '2025-01-12', 600.00, 'В брой'), 
    (3, 4, '2025-01-15', 28000.00, 'Кредитна карта'), 
    (4, 5, '2025-01-13', 500.00, 'Банков превод'), 
    (5, 6, '2025-01-14', 700.00, 'В брой'), 
    (6, 7, '2025-01-16', 10000.00, 'Кредитна карта'), 
    (7, 8, '2025-01-17', 850.00, 'Банков превод'), 
    (8, 9, '2025-01-18', 1200.00, 'В брой'), 
    (9, 10, '2025-01-19', 40000.00, 'Кредитна карта'); 

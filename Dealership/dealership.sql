CREATE DATABASE dealership;
USE dealership;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    PhoneNumber VARCHAR(15),
    Address VARCHAR(255)
);
CREATE TABLE Cars (
    CarID INT PRIMARY KEY AUTO_INCREMENT,
    Make VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    Year INT NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Status VARCHAR(20) NOT NULL CHECK (Status IN ('наличен', 'продаден', 'нает'))
);
CREATE TABLE CarTransactions (
    TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    CarID INT NOT NULL,
    CustomerID INT NOT NULL,
    TransactionType VARCHAR(20) NOT NULL CHECK (TransactionType IN ('Наем', 'Продажба')),
    StartDate DATE NOT NULL,
    EndDate DATE,
    TotalPrice DECIMAL(10, 2) NOT NULL,
    Status VARCHAR(20) NOT NULL CHECK (Status IN ('Завършена', 'Активна', 'Анулирана')),
    FOREIGN KEY (CarID) REFERENCES Cars(CarID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT NOT NULL,
    TransactionID INT NOT NULL,
    PaymentDate DATE NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    PaymentMethod VARCHAR(50) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (TransactionID) REFERENCES CarTransactions(TransactionID)
);

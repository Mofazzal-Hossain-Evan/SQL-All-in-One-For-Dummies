DROP DATABASE IF EXISTS CUSTOMER_DB;
CREATE DATABASE CUSTOMER_DB;
USE CUSTOMER_DB;

CREATE DATABASE IF NOT EXISTS CUSTOMER_DB;
USE CUSTOMER_DB;



-- Customer Table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE
);

-- Customer Phone Table
CREATE TABLE Customer_Phone (
    PhoneID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    PhoneNumber VARCHAR(15),
    PhoneType VARCHAR(10),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Sample Data
INSERT INTO Customer (Name, Email) VALUES
('Rahim', 'rahim@gmail.com'),
('Karim', 'karim@gmail.com');

INSERT INTO Customer_Phone (CustomerID, PhoneNumber, PhoneType) VALUES
(1, '01712345678', 'Personal'),
(2, '01898765432', 'Work');


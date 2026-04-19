USE CUSTOMER_DB;

-- Vendor Table
CREATE TABLE Vendor (
    VendorID INT PRIMARY KEY AUTO_INCREMENT,
    VendorName VARCHAR(100) NOT NULL,
    ContactPerson VARCHAR(100),
    Phone VARCHAR(15),
    Email VARCHAR(100) UNIQUE
);

-- Bill Table
CREATE TABLE Bill (
    BillNo INT PRIMARY KEY AUTO_INCREMENT,
    UnitPrice DECIMAL(10,2) NOT NULL,
    Quantity INT NOT NULL,
    ExtPrice DECIMAL(10,2) GENERATED ALWAYS AS (UnitPrice * Quantity) STORED,
    BillDate DATE,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Insert Bills
INSERT INTO Bill (UnitPrice, Quantity, BillDate, CustomerID) VALUES
(10.00, 5, '2024-01-15', 1),
(10.00, 5, '2024-01-16', 2),
(25.00, 2, '2024-01-17', 1);

-- Orders Table (fixed নাম)
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    OrderDate DATE,
    CustomerID INT,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Insert Orders
INSERT INTO Orders (CustomerID, TotalAmount) VALUES
(1, 150.50),
(2, 89.99),
(1, 275.00);
-- CREATE DATABASE myDB;

-- GO

-- USE myDB;

-- GO

-- GO

-- CREATE TABLE SKU (
--      ID INTEGER IDENTITY PRIMARY KEY,
--      Code AS ('s' + ID) PERSISTED UNIQUE,
--      NAME NVARCHAR(20)
-- );

-- CREATE TABLE Family(
--     ID INTEGER IDENTITY PRIMARY KEY,
--     SurName NVARCHAR(20),
--     BudgetValue FLOAT
-- );

-- GO

-- CREATE TABLE Basket(
--     ID INTEGER IDENTITY,
--     ID_SKU INTEGER,
--     ID_Family INTEGER,
--     Quantity INTEGER CHECK(Quantity >= 0), 
--     Value MONEY CHECK(Value >= 0), 
--     PurchaseDate DATETIME DEFAULT GETDATE(), 
--     DiscountValue DECIMAL(9,2),
--     FOREIGN KEY (ID_SKU) REFERENCES SKU (ID),
--     FOREIGN KEY (ID_Family) REFERENCES Family (ID)
-- );

USE myDB;

SELECT name
FROM sys.tables;

GO
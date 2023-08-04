-- CREATE DATABASE myDB;

-- USE myDB;

-- CREATE TABLE SKU (
--      ID INTEGER IDENTITY PRIMARY KEY,
--      Code AS ('s' + CAST(ID AS NVARCHAR)) PERSISTED UNIQUE,
--      NAME NVARCHAR(20)
-- );

-- CREATE TABLE Family(
--     ID INTEGER IDENTITY PRIMARY KEY,
--     SurName NVARCHAR(20),
--     BudgetValue MONEY
-- );

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

-- SELECT name
-- FROM sys.tables;

-- INSERT INTO SKU VALUES 
-- ('Apple'),
-- ('Orange'),
-- ('Milk'),
-- ('Bread'),
-- ('Fish'),
-- ('Soda'),
-- ('Water'),
-- ('Pie'),
-- ('Roll'),
-- ('Lemon')

-- INSERT INTO Family VALUES 
-- ('Ivanov', 20000),
-- ('Alexeev', 10000),
-- ('Rogov', 30000),
-- ('Repin', 1000),
-- ('Krylov', 7000)

-- INSERT INTO Basket (ID_SKU, ID_Family, Quantity, Value, DiscountValue) VALUES
-- (1, 1, 4, 100, 0),
-- (2, 2, 3, 99, 0),
-- (2, 3, 1, 40, 0),
-- (3, 4, 2, 80, 0),
-- (1, 5, 6, 160, 0),
-- (6, 1, 3, 420, 0),
-- (3, 2, 2, 192, 0)

--  ALTER TABLE Family
--     ALTER COLUMN SurName VARCHAR(255);

--  ALTER TABLE Basket
--     ALTER COLUMN DiscountValue MONEY;

-- SELECT * FROM SKU;
-- SELECT * FROM Family;
-- SELECT * FROM Basket;

-- select TABLE_SCHEMA,TABLE_NAME,COLUMN_NAME,DATA_TYPE, CHARACTER_MAXIMUM_LENGTH from INFORMATION_SCHEMA.COLUMNS 
-- where table_name='Family'

GO
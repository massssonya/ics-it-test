-- USE myDB;

-- CREATE TRIGGER TR_Basket_insert_update
-- ON Basket
-- AFTER INSERT
-- AS
-- BEGIN
--     UPDATE Basket
--     SET DiscountValue = [Value]*0.05
--     WHERE ID_SKU IN (SELECT ID_SKU FROM inserted
--                     GROUP BY ID_SKU
--                     HAVING SUM(1) >= 2)
--     UPDATE Basket
--     SET DiscountValue = 0
--     WHERE ID_SKU IN (SELECT ID_SKU FROM inserted
--                     GROUP BY ID_SKU
--                     HAVING SUM(1) < 2)
-- END;


GO
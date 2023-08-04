-- USE myDB;

-- CREATE FUNCTION TransferableValue (@ID_SKU INTEGER)
--     RETURNS DECIMAL(18, 2)
--     BEGIN
--         DECLARE @sum_transfer DECIMAL(18, 2)
--         SET @sum_transfer = (SELECT SUM(Value)/SUM(Quantity) AS sum_transfer FROM Basket
--         WHERE ID_SKU = @ID_SKU
--         GROUP BY ID_SKU)
--         RETURN @sum_transfer
--     END;

-- PRINT N'Стоимость передаваемого продукта ' + CAST(dbo.TransferableValue(2) AS NVARCHAR) + N' рублей';

-- SELECT  *
-- FROM    sys.objects
-- WHERE   type = 'FN';

GO
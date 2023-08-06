-- CREATE PROCEDURE MakeFamilyPurchase 
--     @FamilySurName varchar(255)
-- AS 
-- IF @FamilySurName NOT IN (SELECT Surname FROM Family)
--     PRINT N'Такой семьи нет'
-- ELSE
--     BEGIN
--         DECLARE @BasketValue MONEY,
--         @FamilyBudget MONEY
--         SET @BasketValue = (SELECT sum(Value*Quantity) FROM Basket
--                             INNER JOIN Family
--                             ON Family.ID=Basket.ID_Family
--                             GROUP BY SurName
--                             HAVING SurName = @FamilySurName)
--         SET @FamilyBudget = (SELECT BudgetValue FROM Family 
--                             WHERE SurName = @FamilySurName)
--         UPDATE Family
--             SET BudgetValue = @FamilyBudget - @BasketValue
--             WHERE SurName = @FamilySurName
--         PRINT N'Данные о бюджете семьи ' + @FamilySurName + N' обновлены'
--     END;

-- DROP PROCEDURE dbo.MakeFamilyPurchase;

-- EXEC MakeFamilyPurchase 'Rogov';

GO
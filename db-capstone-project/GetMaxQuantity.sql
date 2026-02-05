USE LittleLemonDB;

CREATE PROCEDURE GetMaxQuantity()
SELECT MAX(Quantity) AS MaxQuantityInOrder
FROM Orders;

CALL GetMaxQuantity();
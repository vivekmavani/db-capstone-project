USE LittleLemonDB;

SELECT ItemName
FROM Menu
WHERE MenuID = ANY (
    SELECT MenuID
    FROM Orders
    WHERE Quantity > 2
);

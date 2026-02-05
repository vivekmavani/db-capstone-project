USE LittleLemonDB;

PREPARE GetOrderDetail FROM
'SELECT o.OrderID, o.Quantity, o.TotalCost AS Cost
FROM Orders o
INNER JOIN Bookings b ON o.BookingID = b.BookingID
WHERE b.CustomerID = ?';

SET @id = 1;
EXECUTE GetOrderDetail USING @id;

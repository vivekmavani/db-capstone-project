USE LittleLemonDB;

SELECT 
    c.CustomerID,
    c.CustomerName AS FullName,
    o.OrderID,
    o.TotalCost AS Cost,
    m.Cuisine AS MenuName,
    m.ItemName AS CourseName,
    m.Type AS StarterName
FROM Customers c
INNER JOIN Bookings b ON c.CustomerID = b.CustomerID
INNER JOIN Orders o ON b.BookingID = o.BookingID
INNER JOIN Menu m ON o.MenuID = m.MenuID
WHERE o.TotalCost > 150
ORDER BY o.TotalCost ASC;

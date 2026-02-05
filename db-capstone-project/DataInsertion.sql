USE LittleLemonDB;

-- Insert Customers
INSERT INTO Customers (CustomerName, ContactNumber, Email) VALUES
('Anna Iversen', '1234567890', 'anna.iversen@example.com'),
('Joakim Iversen', '1234567891', 'joakim.iversen@example.com'),
('Vanessa McCarthy', '1234567892', 'vanessa.mccarthy@example.com'),
('Marcos Romero', '1234567893', 'marcos.romero@example.com'),
('Hiroki Yamane', '1234567894', 'hiroki.yamane@example.com'),
('Diana Pinto', '1234567895', 'diana.pinto@example.com');

-- Insert Staff
INSERT INTO Staff (FullName, Role, Salary) VALUES
('Seamus O''Hare', 'Manager', 50000.00),
('Mario Gollini', 'Head Chef', 45000.00),
('Adrian Gollini', 'Assistant Chef', 35000.00),
('Giorgos Dioudis', 'Head Waiter', 30000.00),
('Fatma Kaya', 'Waiter', 25000.00);

-- Insert Menu
INSERT INTO Menu (ItemName, Type, Cuisine, Price) VALUES
('Moussaka', 'Course', 'Greek', 12.50),
('Greek Salad', 'Starter', 'Greek', 8.00),
('Souvlaki', 'Course', 'Greek', 10.00),
('Lemon Dessert', 'Dessert', 'Greek', 6.00),
('Tiramisu', 'Dessert', 'Italian', 7.50),
('Pasta Carbonara', 'Course', 'Italian', 14.00),
('Bruschetta', 'Starter', 'Italian', 6.50),
('Turkish Coffee', 'Drink', 'Turkish', 3.00),
('Baklava', 'Dessert', 'Turkish', 5.50),
('Kabasa', 'Course', 'Turkish', 15.00);

-- Insert Bookings
INSERT INTO Bookings (BookingDate, TableNumber, CustomerID) VALUES
('2022-10-10 18:00:00', 5, 1),
('2022-11-12 19:00:00', 3, 3),
('2022-10-11 18:30:00', 2, 2),
('2022-10-13 20:00:00', 2, 1);

-- Insert Orders
-- Order for Booking 1 corresponding to Customer 1
INSERT INTO Orders (OrderDate, Quantity, TotalCost, BookingID, MenuID) VALUES
('2022-10-10 18:30:00', 3, 37.50, 1, 1), -- 3 Moussaka (12.50 * 3)
('2022-10-10 18:30:00', 2, 6.00, 1, 8);  -- 2 Turkish Coffee (3.00 * 2)

-- Order for Booking 2 corresponding to Customer 3
INSERT INTO Orders (OrderDate, Quantity, TotalCost, BookingID, MenuID) VALUES
('2022-11-12 19:30:00', 1, 14.00, 2, 6), -- 1 Pasta Carbonara (14.00 * 1)
('2022-11-12 19:30:00', 1, 7.50, 2, 5);  -- 1 Tiramisu (7.50 * 1)

-- Order for Booking 3 corresponding to Customer 2
INSERT INTO Orders (OrderDate, Quantity, TotalCost, BookingID, MenuID) VALUES
('2022-10-11 19:00:00', 5, 40.00, 3, 2); -- 5 Greek Salad (8.00 * 5)

-- Order for Booking 4 corresponding to Customer 1
INSERT INTO Orders (OrderDate, Quantity, TotalCost, BookingID, MenuID) VALUES
('2022-10-13 20:30:00', 1, 10.00, 4, 3); -- 1 Souvlaki

-- Insert OrderDeliveryStatus
INSERT INTO OrderDeliveryStatus (DeliveryDate, Status, OrderID) VALUES
('2022-10-10 19:30:00', 'Delivered', 1),
('2022-10-10 19:00:00', 'Delivered', 2),
('2022-11-12 20:30:00', 'Delivered', 3),
('2022-11-12 20:00:00', 'Delivered', 4),
(NULL, 'In Progress', 5),
(NULL, 'Pending', 6);

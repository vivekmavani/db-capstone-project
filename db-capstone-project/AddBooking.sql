USE LittleLemonDB;

DELIMITER //

CREATE PROCEDURE AddBooking(IN input_booking_id INT, IN input_customer_id INT, IN input_booking_date DATETIME, IN input_table_number INT)
BEGIN
    INSERT INTO Bookings (BookingID, CustomerID, BookingDate, TableNumber)
    VALUES (input_booking_id, input_customer_id, input_booking_date, input_table_number);
    
    SELECT 'New booking added' AS Confirmation;
END //

DELIMITER ;

CALL AddBooking(9, 3, '2022-12-30', 4);

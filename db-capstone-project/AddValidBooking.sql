USE LittleLemonDB;

DELIMITER //

CREATE PROCEDURE AddValidBooking(IN input_booking_date DATETIME, IN input_table_number INT)
BEGIN
    DECLARE booking_count INT;
    
    START TRANSACTION;
    
    SELECT COUNT(*) INTO booking_count
    FROM Bookings
    WHERE BookingDate = input_booking_date AND TableNumber = input_table_number;
    
    IF booking_count > 0 THEN
        ROLLBACK;
        SELECT CONCAT('Table ', input_table_number, ' is already booked - booking cancelled') AS 'Booking status';
    ELSE
        INSERT INTO Bookings (BookingDate, TableNumber, CustomerID)
        VALUES (input_booking_date, input_table_number, 1); -- Assuming CustomerID 1 for this example
        
        COMMIT;
        SELECT CONCAT('Table ', input_table_number, ' - booking committed') AS 'Booking status';
    END IF;
END //

DELIMITER ;

CALL AddValidBooking('2022-12-17', 6);

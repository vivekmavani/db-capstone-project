USE LittleLemonDB;

DELIMITER //

CREATE PROCEDURE CheckBooking(IN input_booking_date DATETIME, IN input_table_number INT)
BEGIN
    DECLARE booking_count INT;
    
    SELECT COUNT(*) INTO booking_count
    FROM Bookings
    WHERE BookingDate = input_booking_date AND TableNumber = input_table_number;
    
    IF booking_count > 0 THEN
        SELECT CONCAT('Table ', input_table_number, ' is already booked') AS 'Booking status';
    ELSE
        SELECT CONCAT('Table ', input_table_number, ' is available') AS 'Booking status';
    END IF;
END //

DELIMITER ;

CALL CheckBooking('2022-11-12 18:30:00', 3);

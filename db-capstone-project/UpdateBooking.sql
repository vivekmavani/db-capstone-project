USE LittleLemonDB;

DELIMITER //

CREATE PROCEDURE UpdateBooking(IN input_booking_id INT, IN input_booking_date DATETIME)
BEGIN
    UPDATE Bookings
    SET BookingDate = input_booking_date
    WHERE BookingID = input_booking_id;
    
    SELECT CONCAT('Booking ', input_booking_id, ' updated') AS Confirmation;
END //

DELIMITER ;

CALL UpdateBooking(9, '2022-12-17');

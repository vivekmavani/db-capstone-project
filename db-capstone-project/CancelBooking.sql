USE LittleLemonDB;

DELIMITER //

CREATE PROCEDURE CancelBooking(IN input_booking_id INT)
BEGIN
    DELETE FROM Bookings
    WHERE BookingID = input_booking_id;
    
    SELECT CONCAT('Booking ', input_booking_id, ' cancelled') AS Confirmation;
END //

DELIMITER ;

CALL CancelBooking(9);

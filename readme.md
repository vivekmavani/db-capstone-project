# Little Lemon Database Capstone

## Project Description
This project demonstrates the design and implementation of a relational database for the Little Lemon restaurant. It allows for managing bookings, orders, and menu items. The project includes a normalized Eras-Relationship (ER) diagram, SQL scripts for setting up the schema and inserting data, and Python notebooks for interacting with the database.

## Prerequisites
- **MySQL Server**: Ensure you have MySQL Server installed and running.
- **Python**: Python 3.x is required.
- **MySQL Connector for Python**: Install using `pip install mysql-connector-python`.

## Setup Instructions

1.  **Clone the Repository**:
    ```bash
    git clone <repository_url>
    cd little-lemon-project/db-capstone-project
    ```

2.  **Database Setup**:
    -   Open your MySQL client (e.g., MySQL Workbench).
    -   Run the `LittleLemonDB.sql` script to create the database schema and tables.
    -   Run the `DataInsertion.sql` script to populate the tables with initial dummy data.

3.  **Python Integration**:
    -   Open `module3.ipynb` in a Jupyter Notebook environment or VS Code.
    -   Ensure you have the necessary libraries installed.
    -   Update the database connection details (user, password) in the notebook cells if necessary.
    -   Run the cells to test the connection and execute queries.

## File Structure

-   **LittleLemonDB.sql**: SQL script to create the database schema.
-   **DataInsertion.sql**: SQL script to insert initial data into the tables.
-   **LittleLemonDM.mwb**: MySQL Workbench model file for the ER diagram.
-   **module3.ipynb**: Python notebook demonstrating database connection and queries.
-   **Stored Procedures**:
    -   `AddBooking.sql`: Procedure to add a new booking.
    -   `AddValidBooking.sql`: Procedure to add a booking with validation.
    -   `CancelBooking.sql`: Procedure to cancel a booking.
    -   `UpdateBooking.sql`: Procedure to update booking details.
    -   `CheckBooking.sql`: Procedure to check table availability.
    -   `CancelOrder.sql`: Procedure to cancel an order.
    -   `GetMaxQuantity.sql`: Procedure to retrieve the maximum quantity ordered.
    -   `GetOrderDetail.sql`: Procedure to get order details.
-   **Views**:
    -   `OrdersView.sql`: SQL script creating a view for orders.

## Database Schema
The database consists of the following main tables:
-   **Customers**: Stores customer information (ID, Name, Contact, Email).
-   **Bookings**: Manages table bookings (ID, Date, Table Number, Customer).
-   **Menu**: Contains menu items (ID, Name, Type, Cuisine, Price).
-   **Orders**: Tracks customer orders (ID, Date, Quantity, Cost, Booking, Menu).
-   **OrderDeliveryStatus**: Tracks the delivery status of orders.
-   **Staff**: Stores staff information.

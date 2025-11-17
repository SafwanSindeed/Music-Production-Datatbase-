DROP DATABASE IF EXISTS Finance_Bill;
CREATE DATABASE Finance_Bill;

USE Finance_Bill;

CREATE TABLE Studio_room (
    room_id INT PRIMARY KEY,
    room_name VARCHAR(100) NOT NULL,
    capacity INT,
    hourly_rate DECIMAL (10, 2) NOT NULL,
    is_available BOOLEAN DEFAULT TRUE
);

CREATE TABLE Invoices (
	invoice_id INT PRIMARY KEY AUTO_INCREMENT,
    room_id INT NOT NULL,
    customer_name VARCHAR(100) NOT NULL,
    booking_date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    CONSTRAINT invoices_fk_studioroom
		FOREIGN KEY (room_id)
        REFERENCES Studio_room (room_id)
    -- CONSTRAINT invoices_fk_projects
		-- FOREIGN KEY (project_id)
		-- REFERENCES Projects (project_id)
);

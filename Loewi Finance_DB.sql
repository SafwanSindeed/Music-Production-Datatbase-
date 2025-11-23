DROP DATABASE IF EXISTS Finance_Bill;
CREATE DATABASE Finance_Bill;

USE Finance_Bill;

CREATE TABLE Studio_room (
    room_id VARCHAR(50) PRIMARY KEY,
    room_name VARCHAR(100) NOT NULL,
    capacity INT,
    hourly_rate DECIMAL (10, 2) NOT NULL,
    is_available BOOLEAN DEFAULT TRUE
);

CREATE TABLE Invoices (
	invoice_id INT PRIMARY KEY AUTO_INCREMENT,
    room_id VARCHAR(50) NOT NULL,
    customer_name VARCHAR(100) NOT NULL,
    booking_date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    CONSTRAINT invoices_fk_studioroom
		FOREIGN KEY (room_id)
        REFERENCES Studio_room (room_id)
);

INSERT INTO Studio_room VALUES ('R001', 'Sonic Sphere', 5, 25.00, TRUE), ('R002', 'Note Nook', 6, 16.00, FALSE), ('R003', 'Symphonic Den', 3, 20.30, TRUE), 
('R004', 'Melodic Oasis', 7, 32.00, TRUE), ('R005', 'Noisemaker Tower', 9, 20.14, TRUE), ('R006', 'Acoustic Vault', 3, 25.00, FALSE), 
('R007', 'Echo Meadow', 5, 25.00, TRUE), ('R008', 'Tower of Vibes', 4, 10.00, TRUE), ('R009', 'Soundwave Hall', 4, 10.00, TRUE), 
('R010', 'Harmonic Suite', 5, 15.52, FALSE), ('R011', 'Rythmic Haven', 7, 27.10, TRUE);

INSERT INTO Invoices Values (1, 'R001', 'Aaron Todd', '2025-10-30', 22.10), (2, 'R002', 'Yuna Sakura', '2025-11-02', 24.30), (3, 'R003', 'Omar Isik', '2025-11-02', 29.04), 
(4, 'R004', 'Jared Silver', '2025-11-10', 24.00), (5, 'R005', 'Gerald Nova', '2025-10-28', 25.30), (6, 'R006', 'Tyler Ardon', '2025-11-02', 26.00), 
(7, 'R007', 'Xeno King', '2025-11-05', 29.00), (8, 'R008', 'Cory Rodriguez', '2025-10-31', 28.80), (9, 'R009', 'Kevin Morales', '2025-11-20', 26.15), 
(10, 'R010', 'Erin Myers', '2025-11-20', 26.40), (11, 'R011', 'Wolf Sagitta', '2025-11-16', 27.55);

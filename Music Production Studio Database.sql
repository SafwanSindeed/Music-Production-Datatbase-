-- ***************************************************************
-- MUSIC PRODUCTION STUDIO DATABASE SYSTEM
-- By: Thi Tran, Safwan Sindeed, Lowei Ibrahim, and Roy Rodriguez
-- ***************************************************************

-- **************************
-- 	CREATE THE MPS DATABASE
-- **************************

DROP DATABASE IF EXISTS mps;
CREATE DATABASE mps;

-- select the database
USE mps;

-- create tables
CREATE TABLE artists 
(
	artist_id 				  	VARCHAR(10) 			    PRIMARY KEY,
	artist_name 			  	VARCHAR(50)					NOT NULL				UNIQUE,
	artist_genre 			  	VARCHAR(50)					NOT NULL,
	artist_phone 			  	VARCHAR(50),
	artist_email 			  	VARCHAR(50),
	artist_manager_name 		VARCHAR(50),
	artist_contract_start 	  	DATE						NOT NULL,
	artist_contract_end 	  	DATE						NOT NULL,
	artist_notes 				TEXT
);


Create TABLE producers
(
	producer_id       		    VARCHAR(10)                 PRIMARY KEY,
	prducer_name                VARCHAR(50) 			    NOT NULL				UNIQUE,
	prod_specialization    		VARCHAR(50)					NOT NULL,
	producer_hourly_rate        INT							NOT NULL,
	producer_contact_number     VARCHAR(50)
);


CREATE TABLE projects 
(
	project_id 					 VARCHAR(10)                 PRIMARY KEY,
	artist_id 					 VARCHAR(10)				 NOT NULL,
    producer_id					 VARCHAR(10)				 NOT NULL,
	project_song_name 			 VARCHAR(100)				 NOT NULL,
	project_start_date 			 DATE						 NOT NULL,					
	project_end_date 			 DATE,
	project_status 				 VARCHAR(20)				 NOT NULL,
    album_name 			 		 VARCHAR(100)				 DEFAULT 'Album Name not determined yet',
	CONSTRAINT projects_fk_artists
		FOREIGN KEY (artist_id)
			REFERENCES artists (artist_id),
	CONSTRAINT projects_fk_producers
		FOREIGN KEY (producer_id)
			REFERENCES producers (producer_id)
);


CREATE TABLE studio_room 
(
    room_id  					   VARCHAR(10) 				 PRIMARY KEY,
    room_name 					   VARCHAR(100) 			 NOT NULL,
    room_capacity 				   INT,
    room_hourly_rate 			   DECIMAL (10, 2) 			 NOT NULL,
    room_available 				   BOOLEAN 					 DEFAULT TRUE
);


CREATE TABLE sessions 
(
    session_id    					VARCHAR(10) 			 PRIMARY KEY,
    project_id    					VARCHAR(10)				 NOT NULL,
    room_id      					VARCHAR(10)				 NOT NULL,
    session_date  					DATE					 NOT NULL,
    session_start_time    			TIME					 NOT NULL,
    session_end_time      			TIME,
    CONSTRAINT sessions_fk_projects 
		FOREIGN KEY (project_id)
			REFERENCES projects (project_id),
	CONSTRAINT sessions_fk_studio_room
		FOREIGN KEY (room_id)
			REFERENCES studio_room (room_id)
);


CREATE TABLE invoices 
(
	invoice_id 						VARCHAR(10) 			 PRIMARY KEY,
    session_id 						VARCHAR(10) 			 NOT NULL,
    invoice_client_name 			VARCHAR(100) 			 NOT NULL,
    invoice_deadline				DATE					 NOT NULL,
    invoice_total_amount 			DECIMAL(10, 2) 			 NOT NULL,
    CONSTRAINT invoices_fk_sessions
		FOREIGN KEY (session_id)
			REFERENCES sessions (session_id)
);


CREATE TABLE equipment 
(
    equipment_id   					VARCHAR(10) 			 PRIMARY KEY,
    equipment_name           		VARCHAR(50)				 NOT NULL,
    equipment_type           		VARCHAR(50)				 NOT NULL,
    equipment_brand          		VARCHAR(50),
    equipment_model          		VARCHAR(50),
    equipment_quantity       		INT						 NOT NULL	
);


CREATE TABLE session_equipment 
(
    session_id     					 VARCHAR(10)			NOT NULL,
    equipment_id   					 VARCHAR(10)			NOT NULL,
    quantity       					 INT					NOT NULL,
    CONSTRAINT session_equipment
		PRIMARY KEY (session_id, equipment_id),
	CONSTRAINT session_equipment_fk_sessions
		FOREIGN KEY (session_id)
			REFERENCES sessions (session_id),
	CONSTRAINT session_equipment_fk_equipment
		FOREIGN KEY (equipment_id)
			REFERENCES equipment (equipment_id)
);



-- insert rows into tables
INSERT INTO artists VALUES
('A001', 'Taylor Swift', 'Pop', '212-555-0191', 'taylor@repmusic.com', 'Jack Antonoff', '2018-01-01', '2026-12-31',  'Platinum-selling artist'),
('A002', 'Drake', 'Hip-Hop', '416-555-8821', 'drake@ovo.com', 'Noah 40 Shebib', '2017-05-12', '2025-05-11' ,'OVO founder'),
('A003', 'Bad Bunny', 'Reggaeton', '787-555-3311', 'badbunny@rimas.com', 'Noah Assad', '2019-03-08', '2027-03-08', 'Stadium tours'),
('A004', 'The Weeknd', 'R&B', '647-555-1202', 'weeknd@xo.com', 'Wassim Sal Slaiby', '2016-02-02', '2024-12-31', 'Super Bowl performer'),
('A005', 'Billie Eilish', 'Alternative', '310-555-4419', 'billie@darkroom.com', 'Danny Rukasin', '2020-10-10', '2028-10-10', 'Grammy winner'),
('A006', 'Kendrick Lamar', 'Hip-Hop', '505-299-5703', 'kendrick@pgLang.com', 'Anthony Saleh', '2022-11-10', '2026-12-31', 'Pulitzer Prize winner'),
('A007', 'Ariana Grande', 'Pop', '305-508-5662', 'ariana@repmusic.com', 'Brandon Creed', '2011-08-22', '2026-11-30', 'Most debut songs at #1 Billboard'),
('A008', 'Harry Styles', 'Pop', '505-671-7847', 'harry@columbia.com', 'Jeffrey Azoff', '2016-06-20', '2026-10-31', 'Brit Award winner'),
('A009', 'SZA', 'R&B', '276-501-3317', 'sza@tde.com', 'Terrence Henderson', '2013-07-25', '2025-12-22', 'Grammy winner'),
('A010', 'Justin Bieber', 'Pop', '983-277-4396', 'justinbieber@defjam.com', 'Scooter Braun', '2008-04-05', '2026-11-24', 'Best male pop singer'),
('A011', 'Rihanna', 'Pop', '983-323-0640', 'rihanna@rocnation.com', 'Jay Brown', '2010-04-26', '2026-08-09', 'Fenty Beauty founder'),
('A012', 'Lady Gaga', 'Pop', '505-565-3023', 'ladygaga@interscope.com', 'Bobby Campbell', '2007-11-12', '2026-01-30', 'Oscar and Grammy winner'),
('A013', 'Anitta', 'Brazilian Funk', '472-283-0515', 'anitta@repmusic.com', 'Rebeca Leon', '2023-04-24', '2027-03-25', 'International brazilian artist'),
('A014', 'Rosalia', 'Latin Pop', '779-770-8803', 'rosalia@columbia.com', 'Jonathan Dickens', '2018-02-28', '2027-05-20', '#1 Classical and Pop album'),
('A015', 'Mary J. Blige', 'R&B', '505-646-7659', 'maryblige@repmusic.com', 'Steve Rifkind', '2018-07-02', '2025-12-10', 'Grammy winner'),
('A016', 'John Legend', 'R&B', '305-783-2011', 'johnlegend@repmusic.com', 'Ty Stiklorius', '2021-11-01', '2026-04-20', 'EGOT winner'),
('A017', 'Jay-Z', 'Hip-Hop', '472-288-3811', 'jayz@rocnation.com', 'Desiree Perez', '2008-06-06', '2029-07-20', 'Roc Nation founder'),
('A018', 'Nicki Minaj', 'Hip-Hop', '509-566-6860', 'nickiminaj@heavyonit.com', 'Brandon Jovan Garrett', '2023-08-30', '2027-10-10', 'Greatest female rapper of all time'),
('A019', 'Brandy', 'R&B', '817-728-4793', 'brandy@motown.com', 'Ryan Ramsey', '2022-06-02', '2026-11-11', 'Singer and actress'),
('A020', 'Lil Wayne', 'Hip-Hop', '983-977-6031', 'lilwayne@youngmomey.com', 'Cortez Bryant', '2005-01-01', '2027-06-22', 'Young Money founder');


INSERT INTO producers VALUES
('PR001', 'Max Martin', 'Pop, Rock', 280, '305-203-9744'),
('PR002', 'Noah (40) Shebi', 'Hip-Hop, R&B', 250, '305-659-7617'),
('PR003', 'Matthew (Boi-1da) Jehu Samuels', 'Hip-Hop, R&B', 200, '626-271-6047'),
('PR004', 'Marco (MAG) Borrero', 'Latin Trap, Reggaeton', 180, '305-201-7942'),
('PR005', 'Marco (Tainy) Fernandez','Reggaeton', 190, '505-844-6704'),
('PR006', 'Carlo (Illangelo) Montagnese', 'Alternative R&B, Trip-Hop', 200, '505-964-7027'),
('PR007', 'Finneas (FINNEAS) OConnell', 'Alternative Pop', 180, '659-239-9298'),
('PR008', 'Mark (Sounwave) Spears', 'Hip-Hop, Pop', 205, '472-298-5026'),
('PR009', 'Mike WiLL Made-It', 'Hip-Hop, R&B', 215, '472-298-5026'),
('PR010', 'Tommy Brown', 'Pop, R&B', 210, '907-514-7629'),
('PR011', 'Ilya Salmanzadeh', 'Pop, Europop', 220, '223-556-3446'),
('PR012', 'Thomas (Kid Harpoon) Hull', 'Alternative Pop, Indie Rock', 190, '754-366-6014'),
('PR013', 'Rob Bisel', 'Pop, Neo-Soul', 210, '983-332-2588'),
('PR014', 'Leon Thomas', 'R&B, Soul', 200, '305-817-5674'),
('PR015', 'Carter Lang', 'R&B, Soul', 220, '223-308-2639'),
('PR016', 'Christopher (Tricky) Stewart', 'R&B, Pop', 250, '661-993-6049'),
('PR017', 'Kenneth (Soundz) Coby', 'Hip-Hop, R&B', 200, '983-403-1260'),
('PR018', 'Benny Blanco', 'Pop, Hip-Hop', 220, '838-345-6901'),
('PR019', 'Nayvadius (Future) Cash', 'Hip-Hop, Trap', 290, '315-856-1228'),
('PR020', 'Paul (DJ White Shadow) Blair', 'Electronic, Dance-Pop', 215, '775-657-6486'),
('PR021', 'Nadir (RedOne) Khayat', 'Electronic, Dance-Pop', 280, '443-448-0011'),
('PR022', 'Aaron Bay-Schuck', 'Hip-Hop, R&B', 215, '910-529-4087'),
('PR023', 'Rosalia Vila Tobella', 'Flamenco, Pop, Hip-Hop', 290, '505-646-6003'),
('PR024', 'Andre (Dr. Dre) Young', 'Hip-Hop, G-Funk', 300, '678-859-7935'),
('PR025', 'Jim Jonsin', 'Hip-Hop, R&B', 210, '763-282-3476'),
('PR026', 'Mark Morales', 'Hip-Hop, R&B', 190, '715-293-3450'),
('PR027', 'Dave Tozer', 'Hip-Hop, R&B', 195, '815-883-4020'),
('PR028', 'Kanye West', 'Hip-Hop, Soul', 260, '986-733-1631'),
('PR029', 'Alexander (Shux) Shuckburgh', 'Hip-Hop, R&B', 240, '715-665-8990'),
('PR030', 'Andrew Coleman', 'Hip-Hop, Pop', 300, '217-721-9944'),
('PR031', 'Daniel (Kane Beatz) Johnson', 'Hip-Hop, Pop', 250, '567-908-2234'),
('PR032', 'Rodney Jerkins', 'Hip-Hop, R&B', 270, '217-721-9944'),
('PR033', 'David Foster', 'Pop, Adult Comtemporary', 330, '201-589-9810'),
('PR034', 'Tyler (T-Minus) Williams', 'Hip-Hop, R&B', 250, '123-334-5267');


INSERT INTO projects VALUES
('P001', 'A001', 'PR001', 'Blank Space', '2014-07-27', '2014-09-11', 'Completed', '1989'),
('P002', 'A001', 'PR001', 'Shake It Off', '2014-06-22', '2014-09-15', 'Completed', '1989'),
('P003', 'A001', 'PR001', 'Golden Fall', '2025-10-20', '2026-01-01', 'In Progress', 'Open Heart (UPCOMING ALBUM)'),
('P004', 'A002', 'PR002', 'Crew Love', '2011-03-11', '2011-06-10', 'Completed', 'Take Care'),
('P005', 'A002', 'PR003', 'Best I Ever Had', '2008-10-10', '2009-01-01', 'Completed', 'So Far Gone'),
('P006', 'A002', 'PR002', 'Headlines', '2011-03-11', '2011-05-25', 'Completed', 'Take Care'),
('P007', 'A002', 'PR003', 'Earning', '2025-04-10', '2025-12-15', 'In Progress', DEFAULT),
('P008', 'A003', 'PR004', 'Tu Corazón', '2025-04-30', '2025-01-05', 'In Progress', DEFAULT),
('P009', 'A003', 'PR004', 'Tití Me Preguntó', '2021-08-30', '2022-01-07', 'Completed', 'Un Verano Sin Ti'),
('P010', 'A003', 'PR005', 'Dákiti', '2019-05-30', '2019-10-02', 'Completed', 'El Último Tour del Mundo'),
('P011', 'A004', 'PR001', 'Blinding Lights', '2019-03-02', '2019-07-03', 'Completed', 'After Hours'),
('P012', 'A004', 'PR006', 'The Hills', '2014-07-22', '2014-05-20', 'Completed', 'Beauty Behind the Madness'),
('P013', 'A004', 'PR006', 'Velvet Rain', '2025-11-11', '2026-02-02', 'In Progress', 'Danger (UPCOMING ALBUM)'),
('P014', 'A004', 'PR006', 'A Step', '2025-11-20', '2026-02-11', 'In Progress', DEFAULT),
('P015', 'A005', 'PR007', 'Ocean Eyes', '2016-08-11', '2016-11-23', 'Completed', 'Don''t Smile at Me'),
('P016', 'A005', 'PR007', 'Bad Guy', '2018-12-20', '2018-12-21', 'Completed', 'When We All Fall Asleep, Where Do We Go?'),
('P017', 'A005', 'PR007', 'Birds of a Feather', '2023-11-25', '2023-12-05', 'Completed', 'HIT ME HARD AND SOFT'),
('P018', 'A006', 'PR008', 'm.A.A.d city', '2010-09-09', '2010-10-10', 'Completed', 'good kid, m.A.A.d city'),
('P019', 'A006', 'PR009', 'DNA', '2016-04-12', '2016-04-12', 'Completed', 'DAMN.'),
('P020', 'A006', 'PR009', 'HUMBLE', '2016-09-25', '2016-12-12', 'Completed', 'DAMN.'),
('P021', 'A007', 'PR010', 'Unspeakable', '2025-10-11', '2026-01-02', 'In Progress', DEFAULT),
('P022', 'A007', 'PR011', 'God is a Woman', '2018-05-10', '2018-05-11', 'Completed', 'Sweetener'),
('P023', 'A007', 'PR010', 'Thank You, Next', '2018-10-20', '2018-11-15', 'Completed', 'Thank You, Next'),
('P024', 'A008', 'PR012', 'As It Was', '2021-05-21', '2021-05-26', 'Completed', 'Harry''s House'),
('P025', 'A008', 'PR012', 'Watermelon Sugar', '2019-03-03', '2019-04-04', 'Completed', 'Fine Line'),
('P026', 'A008', 'PR012', 'Beautiful', '2025-11-17', '2026-03-02', 'In Progress', DEFAULT),
('P027', 'A008', 'PR012', 'I Have To', '2025-09-13', '2026-01-03', 'In Progress', DEFAULT),
('P028', 'A009', 'PR013', 'Kill Bill', '2022-01-15', '2022-05-10', 'Completed', 'SOS'),
('P029', 'A009', 'PR015', 'Good Days', '2022-02-13', '2022-05-15', 'Completed', 'SOS'),
('P030', 'A009', 'PR014', 'Snooze', '2022-03-15', '2022-04-10', 'Completed', 'SOS'),
('P031', 'A010', 'PR016', 'Baby', '2009-10-15', '2009-10-20', 'Completed', 'My World 2.0'),
('P032', 'A010', 'PR017', 'Confident', '2013-02-28', '2013-03-05', 'Completed', 'Journals'),
('P033', 'A010', 'PR017', 'Go', '2025-10-24', '2026-01-24', 'In Progress', DEFAULT),
('P034', 'A011', 'PR018', 'Diamonds', '2012-03-04', '2012-03-04', 'Completed', 'Unapologetic'),
('P035', 'A011', 'PR001', 'Disturbia', '2006-07-04', '2006-09-04', 'Completed', 'Good Girl Gone Bad: Reloaded'),
('P036', 'A011', 'PR019', 'Loveeeeeee Song', '2012-02-14', '2012-03-10', 'Completed', 'Unapologetic'),
('P037', 'A011', 'PR018', 'Loser', '2025-11-25', '2026-03-15', 'In Progress', DEFAULT),
('P038', 'A011', 'PR019', 'Got It', '2025-10-29', '2026-02-12', 'In Progress', DEFAULT),
('P039', 'A012', 'PR020', 'Applause', '2012-11-11', '2012-11-29', 'Completed', 'ARTPOP'),
('P040', 'A012', 'PR021', 'Bad Romance', '2008-09-09', '2008-11-28', 'Completed', 'The Fame Monster'),
('P041', 'A012', 'PR020', 'Don''t Leave Me', '2025-09-26', '2025-12-20', 'In Progress', DEFAULT),
('P042', 'A012', 'PR021', 'Not Here', '2025-09-15', '2026-01-13', 'In Progress', DEFAULT),
('P043', 'A013', 'PR022', 'Envolver', '2020-06-20', '2020-07-20', 'Completed', 'Versions of Me'),
('P044', 'A013', 'PR022', 'Me Gusta', '2020-08-20', '2020-09-01', 'Completed', 'Versions of Me'),
('P045', 'A013', 'PR022', 'Love Me, Love Me', '2021-06-28', '2021-08-20', 'Completed', 'Versions of Me'),
('P046', 'A014', 'PR023', 'Berghain', '2024-06-01', '2024-08-10', 'Completed', 'LUX'),
('P047', 'A014', 'PR023', 'La Perla', '2024-09-10', '2024-11-10', 'Completed', 'LUX'),
('P048', 'A014', 'PR023', 'Frío', '2025-11-26', '2026-03-30', 'In Progress', DEFAULT),
('P049', 'A014', 'PR023', 'BESO', '2022-03-10', '2022''03-11', 'Completed', 'RR'),
('P050', 'A015', 'PR025', 'Mr. Wrong', '2010-04-05', '2010''05-20', 'Completed', 'My Life II…The Journey Continues (Act I)'),
('P051', 'A015', 'PR024', 'Family Affair', '1999-03-04', '1999-04-05', 'Completed', 'No More Drama'),
('P052', 'A015', 'PR026', 'Real Love', '1990-09-09', '1991-01-05', 'Completed', 'What''s The 411?'),
('P053', 'A015', 'PR016', 'Just Fine', '2006-01-15', '2006-02-02', 'Completed', 'Growing Pains'),
('P054', 'A015', 'PR024', 'Not Right', '2025-10-01', '2025-12-10', 'In Progress', DEFAULT),
('P055', 'A016', 'PR027', 'All of Me', '2013-02-14', '2013-02-16', 'Completed', 'Love in the Future'),
('P056', 'A016', 'PR027', 'To You', '2025-09-22', '2026-02-17', 'In Progress', DEFAULT),
('P057', 'A016', 'PR027', 'Not Everything', '2025-08-11', '2025-12-07', 'In Progress', DEFAULT),
('P058', 'A017', 'PR029', 'Empire State of Mind', '2007-05-22', '2007-10-25', 'Completed', 'The Blueprint 3'),
('P059', 'A017', 'PR028', 'Run This Town', '2007-06-12', '2007-09-15', 'Completed', 'The Blueprint 3'),
('P060', 'A017', 'PR028', 'Hate', '2008-03-05', '2008-03-25', 'Completed', 'The Blueprint 3'),
('P061', 'A017', 'PR030', 'So Ambitious', '2007-06-02', '2007-06-05', 'Completed', 'The Blueprint 3'),
('P062', 'A018', 'PR021', 'Starships', '2011-05-08', '2011-05-20', 'Completed', 'Pink Friday…Roman Reloaded'),
('P063', 'A018', 'PR031', 'Super Bass', '2009-03-26', '2008-03-26', 'Completed', 'Pink Friday'),
('P064', 'A018', 'PR021', 'On Me', '2025-11-01', '2026-02-16', 'In Progress', DEFAULT),
('P065', 'A019', 'PR032', 'The Boy is Mine', '1996-09-01', '1997-01-15', 'Completed', 'Never Say Never'),
('P066', 'A019', 'PR033', 'Have You Ever', '1996-10-01', '1997-10-03', 'Completed', 'Never Say Never'),
('P067', 'A019', 'PR032', 'Not Down', '2025-08-14', '2026-01-02', 'In Progress', DEFAULT),
('P068', 'A019', 'PR033', 'Heard of Me', '2025-10-09', '2026-03-09', 'In Progress', DEFAULT),
('P069', 'A020', 'PR034', 'She Will', '2011-03-28', '2011-04-01', 'Completed', 'Tha Carter IV (Complete Edition)'),
('P070', 'A020', 'PR009', 'Love Me', '2012-07-29', '2012-08-25', 'Completed', 'I Am Not a Human Being II (Deluxe)'),
('P071', 'A020', 'PR034', 'Ain''t Regular', '2025-11-11', '2026-02-05', 'In Progress', DEFAULT),
('P072', 'A020', 'PR009', 'Player', '2025-11-22', '2026-01-18', 'In Progress', DEFAULT);


INSERT INTO studio_room VALUES 
('R001', 'Sonic Sphere', 5, 55.00, TRUE), 
('R002', 'Note Nook', 6, 56.00, FALSE), 
('R003', 'Symphonic Den', 3, 35.30, TRUE), 
('R004', 'Melodic Oasis', 7, 80.00, TRUE), 
('R005', 'Noisemaker Tower', 9, 90.14, TRUE), 
('R006', 'Acoustic Vault', 3, 30.00, FALSE), 
('R007', 'Echo Meadow', 5, 50.00, TRUE), 
('R008', 'Tower of Vibes', 4, 40.00, TRUE), 
('R009', 'Soundwave Hall', 4, 45.00, TRUE), 
('R010', 'Harmonic Suite', 5, 60.52, FALSE), 
('R011', 'Rythmic Haven', 7, 85.10, TRUE),
('R012', 'Creation Station', 4, 35.00, TRUE),
('R013', 'Crafted Visions', 11, 110.00, TRUE),
('R014', 'Atelier De Musique', 6, 52.00, TRUE),
('R015', 'Golden Closet', 10, 102.00, TRUE),
('R016', 'Central Music', 8, 82.00, TRUE),
('R017', 'Tunez Studio', 3, 33.00, TRUE),
('R018', 'Groovy Room', 12, 120.00, TRUE),
('R019', 'Studio Soundz', 8, 105.90, FALSE),
('R020', 'Timeless Blues', 5, 52.00, FALSE),
('R021', 'Rock City', 7, 82.50, TRUE),
('R022', 'Soul Lodge', 9, 110.0, FALSE),
('R023', 'Band Central', 15, 160.00, TRUE),
('R024', 'Discoholic', 9, 115.20, TRUE);


INSERT INTO sessions VALUES
('S001', 'P003', 'R001', '2025-11-22', '08:00:00', '09:30:00'),
('S002', 'P007', 'R003', '2025-11-25', '10:00:00', '12:30:00'),
('S003', 'P008', 'R004', '2025-11-27', '14:00:00', '16:00:00'),
('S004', 'P013', 'R005', '2025-11-29', '12:00:00', '13:30:00'),
('S005', 'P014', 'R007', '2025-12-01', '16:00:00', '18:00:00'),
('S006', 'P021', 'R008', '2025-12-03', '20:00:00', '22:30:00'),
('S007', 'P026', 'R009', '2025-12-05', '18:00:00', '20:00:00'),
('S008', 'P027', 'R011', '2025-12-07', '09:00:00', '11:30:00'),
('S009', 'P033', 'R012', '2025-12-09', '11:00:00', '13:00:00'),
('S010', 'P037', 'R013', '2025-12-11', '13:00:00', '14:30:00'),
('S011', 'P038', 'R014', '2025-12-16', '15:00:00', '16:30:00'),
('S012', 'P041', 'R015', '2025-12-18', '17:00:00', '19:00:00'),
('S013', 'P042', 'R016', '2025-12-18', '19:00:00', '21:00:00'),
('S014', 'P048', 'R017', '2025-12-21', '20:00:00', '21:30:00'),
('S015', 'P054', 'R018', '2025-12-22', '18:00:00', '20:00:00'),
('S016', 'P056', 'R021', '2025-12-28', '22:00:00', '23:30:00'),
('S017', 'P057', 'R023', '2025-12-28', '18:00:00', '20:30:00'),
('S018', 'P064', 'R024', '2026-01-15', '19:00:00', '20:30:00'),
('S019', 'P067', 'R005', '2026-01-30', '10:00:00', '12:00:00'),
('S020', 'P068', 'R011', '2026-02-06', '13:00:00', '14:00:00'),
('S021', 'P071', 'R015', '2026-02-20', '15:00:00', '17:00:00'),
('S022', 'P072', 'R021', '2026-03-01', '16:00:00', '18:30:00');


INSERT INTO invoices VALUES 
('I001', 'S001', 'Republic Records', '2025-11-25', 82.50), 
('I002', 'S002', 'OVO Sound', '2025-11-28', 88.25), 
('I003', 'S003', 'Rimas Entertainment', '2025-11-30', 160.00), 
('I004', 'S004', 'XO', '2025-12-02', 135.21), 
('I005', 'S005', 'XO', '2025-12-04', 100.00), 
('I006', 'S006', 'Republic Records', '2025-12-06', 100.00), 
('I007', 'S007', 'Columbia Records', '2025-12-08', 90.00), 
('I008', 'S008', 'Columbia Records', '2025-12-10', 212.75), 
('I009', 'S009', 'Dej Jam Recordings', '2025-12-12', 70.00), 
('I010', 'S010', 'Roc Nation', '2025-12-14', 165.00), 
('I011', 'S011', 'Roc Nation', '2025-12-19', 78.00),
('I012', 'S012', 'Interscope Records', '2025-12-21', 204.00),
('I013', 'S013', 'Interscope Records', '2025-12-21', 164.00),
('I014', 'S014', 'Columbia Records', '2025-12-24', 49.50),
('I015', 'S015', 'Republic Records', '2025-12-25', 240.00),
('I016', 'S016', 'Republic Records', '2026-01-01', 123.75),
('I017', 'S017', 'Republic Records', '2026-01-01', 400.00),
('I018', 'S018', 'Heavy On It Records', '2026-01-18', 172.80),
('I019', 'S019', 'Motown Records', '2026-02-02', 180.28),
('I020', 'S020', 'Motown Records', '2026-02-09', 85.10),
('I021', 'S021', 'Young Money Records', '2026-02-23', 204.00),
('I022', 'S022', 'Young Money Records', '2026-03-04', 206.25);


INSERT INTO equipment VALUES
('E001', 'Pro Tools Ultimate + iMac Pro', 'DAW/Computer', 'Apple/Avid', 'iMac Pro 3.2GHz Xeon', 1),
('E002', 'SSL XL Console', 'Console', 'SSL', 'XL', 1),
('E003', 'Midas Venice Console', 'Console', 'Midas', 'Venice 160', 1),
('E004', 'Quested S8 Studio Monitor Set', 'Monitoring', 'Quested', 'S8 Active', 2),
('E005', 'Genelec 8020A Monitor Set', 'Monitoring', 'Genelec', '8020A', 2),
('E006', 'Behringer Powerplay Headphone Mixer', 'Personal Monitoring', 'Behringer', 'P16', 5),
('E007', 'Beyerdynamic DT100 Headphones', 'Headphones', 'Beyerdynamic', 'DT100', 8),
('E008', 'Neumann U87 Microphone', 'Microphone', 'Neumann', 'U87', 2),
('E009', 'Shure SM57 Microphone', 'Microphone', 'Shure', 'SM57', 7),
('E010', 'Martin Custom Shop Steelstring Guitar', 'Guitar', 'Martin', 'OOV-28', 1),
('E011', 'Gibson Les Paul 1958 Reissue', 'Guitar', 'Gibson', 'Les Paul 1958 Reissue', 1),
('E012', 'Fender Stratocaster Standard USA', 'Guitar', 'Fender', 'Stratocaster Standard USA', 1),
('E013', 'Fender Telecaster Thin Line', 'Guitar', 'Fender', 'Telecaster Thin Line', 1),
('E014', 'Vox AC30 Guitar Amplifier', 'Amplifier', 'Vox', 'AC30', 1),
('E015', 'Fender Deluxe Reverb Amp', 'Amplifier', 'Fender', 'Deluxe Reverb', 1),
('E016', 'Marshall JCM900 1960 Lead Cabinet', 'Amplifier', 'Marshall', 'JCM900 1960', 1),
('E017', 'Pearl Masters Custom Maple Drum Set', 'Drums', 'Pearl', 'Masters Custom Maple', 1),
('E018', 'DW Performance Snare Drum', 'Drums', 'DW', 'Performance Snare', 1),
('E019', 'Yamaha S90 Stage Piano', 'Keyboard', 'Yamaha', 'S90', 1),
('E020', 'Moog Prodigy Synthesizer', 'Keyboard', 'Moog', 'Prodigy', 1),
('E021', 'Roland SPD 20 Percussion Pad', 'Percussion', 'Roland', 'SPD 20', 1),
('E022', 'Radial J48 DI', 'DI', 'Radial', 'J48', 1),
('E023', 'Ampeg SVT-100 Bass Amplifier', 'Amplifier', 'Ampeg', 'SVT-100', 1),
('E024', 'Line 6 Bass Pod', 'FX/Processor', 'Line 6', 'Bass Pod', 1),
('E025', 'TC Electronic M3000 Reverb/Delay', 'FX/Processor', 'TC Electronic', 'M3000', 1);


INSERT INTO session_equipment VALUES
('S001', 'E001', 1),
('S001', 'E002', 1),
('S002', 'E001', 1),
('S002', 'E003', 1),
('S003', 'E004', 1),
('S003', 'E005', 1),
('S004', 'E006', 1),
('S004', 'E007', 1),
('S005', 'E008', 1),
('S005', 'E009', 1),
('S006', 'E010', 1),
('S006', 'E011', 1),
('S007', 'E012', 1),
('S007', 'E013', 1),
('S008', 'E014', 1),
('S008', 'E015', 1),
('S009', 'E016', 1),
('S009', 'E017', 1),
('S010', 'E018', 1),
('S010', 'E019', 1),
('S011', 'E020', 1),
('S011', 'E021', 1),
('S012', 'E022', 1),
('S012', 'E023', 1),
('S013', 'E024', 1),
('S013', 'E025', 1),
('S014', 'E001', 1),
('S014', 'E004', 1),
('S015', 'E001', 1),
('S015', 'E005', 1),
('S016', 'E001', 1),
('S016', 'E006', 1),
('S017', 'E001', 1),
('S017', 'E007', 1),
('S018', 'E001', 1),
('S018', 'E008', 1),
('S019', 'E001', 1),
('S019', 'E009', 1),
('S020', 'E001', 1),
('S020', 'E010', 1), 
('S021', 'E001', 1),
('S021', 'E011', 1),
('S022', 'E001', 1),
('S022', 'E012', 1); 



-- drop user if it already exists
DROP USER IF EXISTS mps_tester@localhost;

-- create user
CREATE USER mps_tester@localhost 
IDENTIFIED BY 'sesame';

-- grant privileges to that user
GRANT SELECT, INSERT, DELETE, UPDATE
ON mps.*
TO mps_tester@localhost;

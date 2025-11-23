Create TABLE tbl Producer
(

//Columns to Add

[producer_id] VARCHAR(25) PRIMARY KEY,
[name] VARCHAR(25) NOT NULL,
[specialization] VARCHAR(25),
[hourly_rate] INT,
[contact_number] VARCHAR(20),

);

(

INSERT INTO producers VALUES

('PR001', 'Quincy Jones', 'Pop, Jazz', 250, '(737)646-3522'),
('PR002', 'Metro-Boomin', 'Hip-Hop, Rap', 300, '(472)483-2979'),
('PR003', 'Max Martin', 'Pop, Rock', 280, '(305)203-9744'),
('PR004', 'Rick Rubin', 'Rock, Hip-Hop', 275, '(505)444-5151'),
('PR005', 'Pharrell Williams', 'Pop, R&B', 260, '(305)236-2282'),
('PR006', 'Timbaland', 'Hip-Hop, Pop', 240, '(573)687-9567'),
('PR007', 'Mark Ronson', 'Pop, Funk', 220, '(505)646-5572'),
('PR008', 'Marshmello', 'Electronic, EDM', 200, '(916)415-1537'),
('PR009', 'Jimmy Lovine', 'Rock, Pop', 230, '(305)202-3368'),
('PR0010', 'Steve Mac', 'Pop, Dance', 210, '(472)203-1586'),
('PR0011', 'FINNEAS', 'Alt-Pop', 180, '(659)239-9298'),
('PR0012', 'Mustard', 'Hip-Hop, Pop', 290, '(305)234-5822'),
('PR0013', 'Deadmau5', 'Electronic, EDM', 240, '(505)353-8595'),
('PR0014', 'Calvin Harris', 'EDM, Pop', 250, '(743)651-3900'),
('PR0015', 'Benny Blanco', 'Pop, Hip-Hop', 220, '(838)345-6901'),
('PR0016', 'Giorgio Moroder', 'Disco, Electronic', 210, '(928)480-0252'),
('PR0017', 'Diplo', 'EDM, Hip-Hop', 230, '(305)559-6210'),
('PR0018', 'Max Cooper', 'Techno, Electronic', 180, '(305)261-7442'),
('PR0019', 'Linda Thompson', 'Folk, Pop', 160, '(505)646-9866'),
('PR0020', 'Jack Antonoff', 'Pop, Indie', 200, '(619)859-9049'),
('PR0021', 'Pharrell Williams', 'R&B, Funk', 260, '(505)648-5311'),
('PR0022', 'Mutt Lange', 'Rock, Pop', 270, '(505)911-1440'),
('PR0023', 'George Martin', 'Classical, Pop', 300, '(678)879-2710'),
('PR0024', 'Linda Perry', 'Rock, Pop', 180, '(757)318-6866'),
('PR0025', 'Doja Cat', 'Hip-Hop, Rap', 230, '(305)469-0606');

—

CREATE TABLE equipment (
    equipment_id   VARCHAR(25) PRIMARY KEY,
    name           VARCHAR(25),
    type           VARCHAR(25),
    brand          VARCHAR(25),
    model          VARCHAR(25),
    quantity       INT
);

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

CREATE TABLE sessions (
    session_id    VARCHAR(10) PRIMARY KEY,
    project_id    VARCHAR(10),
    room_id       VARCHAR(10),
    session_date  DATE,
    start_time    TIME,
    end_time      TIME
);

INSERT INTO sessions VALUES
('S001', 'P013', 'R001', '2025-11-22', '08:00:00', '09:30:00'),
('S002', 'P008', 'R002', '2025-11-25', '10:00:00', '11:30:00'),
('S003', 'P048', 'R003', '2025-11-27', '14:00:00', '15:30:00'),
('S004', 'P043', 'R004', '2025-11-29', '12:00:00', '13:30:00'),
('S005', 'P038', 'R005', '2025-12-01', '16:00:00', '17:30:00'),
('S006', 'P033', 'R006', '2025-12-03', '20:00:00', '21:30:00'),
('S007', 'P028', 'R007', '2025-12-05', '18:00:00', '19:30:00'),
('S008', 'P023', 'R008', '2025-12-07', '09:00:00', '10:30:00'),
('S009', 'P018', 'R009', '2025-12-09', '11:00:00', '12:30:00'),
('S010', 'P008', 'R010', '2025-12-11', '13:00:00', '14:30:00'),
('S011', 'P003', 'R011', '2025-12-16', '15:00:00', '16:30:00');

—

CREATE TABLE session_equipment (
    equipment_id   VARCHAR(10),
    room_id        VARCHAR(10),
    session_id     VARCHAR(10),
    quantity       INT,
    PRIMARY KEY (equipment_id, room_id, session_id)
);


INSERT INTO session_equipment VALUES
('E001', 'R001', 'S001', 1),
('E002', 'R001', 'S001', 2),
('E003', 'R002', 'S002', 1),
('E004', 'R002', 'S002', 1),
('E005', 'R003', 'S003', 1),
('E006', 'R003', 'S003', 2),
('E007', 'R004', 'S004', 1),
('E008', 'R004', 'S004', 1),
('E009', 'R005', 'S005', 1),
('E010', 'R005', 'S005', 1);

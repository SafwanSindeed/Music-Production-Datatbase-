USE artistmanagement;

CREATE TABLE artists (
Artist_ID VARCHAR(50) PRIMARY KEY UNIQUE NOT NULL,
Artist_Name VARCHAR(100),
Genre VARCHAR(50),
Phone VARCHAR(50),
Email VARCHAR(50),
Manager_Name VARCHAR(50),
Contract_Start DATE,
Contract_End DATE,
Notes TEXT
);

CREATE TABLE projects (
Project_ID VARCHAR(50) PRIMARY KEY UNIQUE NOT NULL,
Artist_ID VARCHAR(50),
Project_Name VARCHAR(100),
Start_Date DATE,
End_Date DATE,
Status VARCHAR(20),
Budget VARCHAR(50),
Description TEXT,
FOREIGN KEY (Artist_ID) REFERENCES artists(Artist_ID)
);




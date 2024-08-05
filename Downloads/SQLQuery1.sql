USE HW_W15;
CREATE TABLE Students (
    ID INT IDENTITY(1,1) PRIMARY KEY,     
    FirstName NVARCHAR(50),               
    LastName NVARCHAR(50),               
    GradeLevel INT,                       
    SchoolName NVARCHAR(100),             
    Gender BIT,                           
    GPA DECIMAL(4,2),                     
    Score INT                             
);
INSERT INTO Students (FirstName, LastName, GradeLevel, SchoolName, Gender, GPA, Score)
VALUES
('Maryam', 'Salehi', 8, 'School A', 0, 18.2, 90),
('Benyamin', 'Khodadai', 8, 'School B', 1, 19.1, 95),
('Hadid', 'Khodadadi', 9, 'School C', 1, 17.5, 85);
INSERT INTO Students (FirstName, LastName, GradeLevel, SchoolName, Gender, GPA, Score)
VALUES
('Ali', 'Rahimi', 12, 'School B', 1, 19.1, 95),
('Neda', 'Kiani', 11, 'School C', 0, 17.5, 85),
('Hassan', 'Moradi', 10, 'School D', 1, 17.0, 82),
('Zahra', 'Farhadi', 8, 'School E', 0, 19.4, 96),
('Reza', 'Najafi', 9, 'School F', 1, 15.8, 78),
('Niloofar', 'Taheri', 7, 'School G', 0, 16.5, 85),
('Mohammad', 'Ghaffari', 9, 'School H', 1, 18.9, 92),
('Fatemeh', 'Shirazi', 10, 'School I', 0, 17.7, 88),
('Ahmad', 'Nouri', 11, 'School J', 1, 16.2, 80),
('Ladan', 'Ghorbani', 7, 'School K', 0, 18.3, 89),
('Saeed', 'Eskandari', 9, 'School L', 1, 17.4, 87),
('Negar', 'Firooz', 12, 'School M', 0, 19.6, 94),
('Kian', 'Jafari', 12, 'School N', 1, 16.8, 81),
('Elaheh', 'Hosseini', 7, 'School O', 0, 17.2, 83),
('Omid', 'Kazemi', 8, 'School P', 1, 18.5, 90),
('Setareh', 'Mousavi', 7, 'School Q', 0, 19.0, 92),
('Amir', 'Gholami', 10, 'School R', 1, 16.1, 80),
('Roya', 'Karimian', 10, 'School S', 0, 17.8, 84),
('Javad', 'Rostami', 9, 'School T', 1, 18.7, 91),
('Shirin', 'Taghavi', 7, 'School U', 0, 19.3, 97),
('Mohsen', 'Azizi', 11, 'School V', 1, 16.9, 79),
('Mina', 'Mirzazadeh', 11, 'School W', 0, 17.1, 82),
('Farid', 'Alinejad', 7, 'School X', 1, 18.6, 88),
('Leila', 'Parsa', 8, 'School Y', 0, 19.7, 95),
('Hamid', 'Ranjbar', 12, 'School Z', 1, 16.7, 81),
('Azita', 'Heidari', 12, 'School AA', 0, 17.3, 83),
('Sina', 'Ghasemi', 11, 'School BB', 1, 18.1, 90),
('Saba', 'Nassiri', 11, 'School CC', 0, 19.2, 93),
('Mohammad Reza', 'Hosseini', 7, 'School DD', 1, 16.6, 78),
('Sara', 'Javid', 10, 'School EE', 0, 17.9, 80),
('Vahid', 'Amini', 9, 'School FF', 1, 18.0, 82),
('Niloofar', 'Gholami', 7, 'School GG', 0, 19.5, 94),
('Morteza', 'Farzad', 8, 'School HH', 1, 16.4, 77),
('Hoda', 'Hosseini', 7, 'School II', 0, 17.6, 84),
('Behzad', 'Ghaffari', 8, 'School JJ', 1, 18.8, 89),
('Ramin', 'Gharibi', 10, 'School KK', 1, 19.2, 92),
('Yasaman', 'Taghavi', 9, 'School LL', 0, 16.3, 81),
('Arash', 'Rezaei', 10, 'School MM', 1, 17.9, 83),
('Shadi', 'Khakpour', 8, 'School NN', 0, 18.4, 86),
('Arman', 'Khodadadi', 9, 'School OO', 1, 19.1, 90),
('Sahar', 'Hosseini', 12, 'School PP', 0, 16.5, 78),
('Ehsan', 'Yazdani', 8, 'School QQ', 1, 17.8, 82),
('Roya', 'Hosseini', 7, 'School RR', 0, 18.0, 84),
('Kourosh', 'Shirazi', 11, 'School SS', 1, 19.3, 87),
('Niloofar', 'Rostami', 9, 'School TT', 0, 16.6, 79),
('Fariba', 'Javadi', 9, 'School UU', 0, 17.4, 81);
INSERT INTO Students (FirstName, LastName, GradeLevel, SchoolName, Gender, GPA, Score)
VALUES('Hossien','Salehi',12,'School VV',1,19.5,85)
--Query one
SELECT * FROM Students;
--Query two
SELECT FirstName,LastName,GradeLevel,GPA
FROM Students;
--Query three
SELECT Firstname,LastName
FROM Students
WHERE GPA <12;
--Query four
UPDATE Students
SET Score = 0;
--Query five
SELECT SchoolName
FROM Students
WHERE GradeLevel BETWEEN 10 AND 12 AND GPA BETWEEN 18.1 AND 18.9;
--Query six
UPDATE Students
SET Score = 1
WHERE GradeLevel BETWEEN 10 AND 12 AND GPA BETWEEN 18.1 AND 18.9;
--Query seven
SELECT *
FROM Students
WHERE GradeLevel = 9 AND Gender = 1 AND FirstName IN('Ali','Reza');
--Query eight
DELETE FROM Students
WHERE Score = 0 AND GradeLevel < 12;
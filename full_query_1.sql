INSERT INTO dbo.tblUsers
(FirstName, LastName, gender, BirthDate, Email, tel, Town, Username, address, password, ADMIN)
VALUES
('Gilad', 'Mizrahi', 'male', '2002-04-12', 'Giladthecool@gmail.com', '9720550083211', 'tel aviv', 'gilad123', 'neysadin 3', '1234', 0),
('Noam', 'Levi', 'male', '2001-09-23', 'noam.levi@gmail.com', '9720501112233', 'jerusalem', 'noam123', 'herzl 12', '5678', 0),
('Raya', 'Cohen', 'female', '2003-01-17', 'raya.cohen@gmail.com', '9720523334456', 'haifa', 'raya_pw', 'hanasi 8', '2468', 0),
('Eitan', 'Bar', 'male', '1999-06-05', 'eitan.bar@gmail.com', '9720546677889', 'rishon lezion', 'eitanpass', 'rothschild 21', '1357', 0),
('Yael', 'Shapiro', 'female', '2002-11-30', 'yael.s@gmail.com', '9720539987766', 'petach tikva', 'yael321', 'begin 4', '9999', 0),
('Daniel', 'Friedman', 'male', '2000-03-14', 'daniel.f@gmail.com', '9720514455667', 'beer sheva', 'danielpw', 'negev 10', '4321', 0),
('Tamar', 'Katz', 'female', '2004-07-09', 'tamar.k@gmail.com', '9720582233445', 'netanya', 'tamark', 'weizman 6', '1111', 0);

SELECT *
FROM dbo.tblUsers

SELECT Username, password
FROM tblUsers
WHERE Town = 'Nes-Tziona' AND ADMIN = 0;

SELECT COUNT(*) AS UsersOver18
FROM tblUsers
WHERE DATEDIFF(YEAR, BirthDate, GETDATE()) > 18;

SELECT FirstName, LastName, UserId,
       DATEDIFF(YEAR, BirthDate, GETDATE()) AS Age
FROM tblUsers
WHERE (gender = 'male' AND DATEDIFF(YEAR, BirthDate, GETDATE()) > 30)
   OR (gender = 'female' AND DATEDIFF(YEAR, BirthDate, GETDATE()) < 20)
ORDER BY Age DESC;

SELECT DISTINCT Town
FROM tblUsers;

UPDATE tblUsers
SET Town = 'NA'
WHERE Town IS NULL;

UPDATE tblUsers
SET FirstName = FirstName + '_Minor'
WHERE DATEDIFF(YEAR, BirthDate, GETDATE()) < 18;
SELECT DB_NAME() AS CurrentDB;
SELECT * FROM dbo.tblUsers;
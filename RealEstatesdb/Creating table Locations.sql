use RealEstatesdb;

--Създаване на таблица за локациите
CREATE TABLE locations (
	city VARCHAR(80) PRIMARY KEY,
	description VARCHAR(240),
	population INT,
	url VARCHAR(45),
	sea_nearby BIT,
	mountain_nearby BIT
);
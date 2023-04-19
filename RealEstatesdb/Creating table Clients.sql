use RealEstatesdb;

--Създаване на таблица Клиенти
CREATE TABLE Clients 
(
	client_id INT PRIMARY KEY,
	client_pname VARCHAR(50),
	client_lname VARCHAR(50),
	client_address VARCHAR(100),
	client_contact VARCHAR(30),
	client_email VARCHAR(30),
	username VARCHAR(30),
	password VARCHAR(30)
);
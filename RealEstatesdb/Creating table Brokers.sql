use RealEstatesdb;

--Създаване на таблица за Брокерите
CREATE TABLE agents(
	agent_id INT PRIMARY KEY,
	agent_pname VARCHAR(50),
	agent_lname VARCHAR(50),
	agent_address VARCHAR (100),
	agent_contact VARCHAR(20),
	agent_email VARCHAR(50),
	agent_type BIT,
	username VARCHAR(30),
	password VARCHAR(30)
);
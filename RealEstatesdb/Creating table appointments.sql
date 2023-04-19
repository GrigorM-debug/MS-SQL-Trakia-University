use RealEstatesdb;

-- Създаване на таблица appointments
CREATE TABLE appointments(
	appointment_id INT PRIMARY KEY,
	client_id INT,
	agent_id INT,
	appointment_date DATETIME,
	appointment_description VARCHAR(150),
	appointment_status BIT,
	FOREIGN KEY (client_id) REFERENCES Clients(client_id),
	FOREIGN KEY (agent_id) REFERENCES agents(agent_id)
);

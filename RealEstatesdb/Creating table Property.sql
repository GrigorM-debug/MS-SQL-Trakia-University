use RealEstatesdb;

--Създаване на таблица Имоти
CREATE TABLE properties(
	property_id INT PRIMARY KEY,
	property_type_id INT,
	city VARCHAR(80),
	agent_id INT,
	property_name VARCHAR(80),
	description VARCHAR(250),
	property_living_area SMALLINT,
	property_floor TINYINT,
	property_year_built SMALLINT,
	property_garage BIT,
	property_price DECIMAL(10,2),
	property_status VARCHAR(30),
	FOREIGN KEY (property_type_id) REFERENCES property_types(property_type_id),
	FOREIGN KEY (city) REFERENCES locations(city),
	FOREIGN KEY (agent_id) REFERENCES agents(agent_id)

);
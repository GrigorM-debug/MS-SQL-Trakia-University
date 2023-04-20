use REAL_ESTATES;

CREATE TABLE properties 
(
  property_id int NOT NULL IDENTITY(700,1),
  property_type_id INT NOT NULL,
  agent_id INT NOT NULL,
  city VARCHAR(80) NOT NULL,
  property_name VARCHAR(80) NOT NULL,
  description VARCHAR(250) NULL,
  property_living_area SMALLINT NOT NULL,
  property_floor TINYINT NOT NULL,
  property_year_built SMALLINT NOT NULL,
  property_garage BIT NULL,
  property_price DECIMAL(10,2) NOT NULL,
  property_status TINYINT NULL DEFAULT 1,
  CONSTRAINT pk_properties PRIMARY KEY (property_id),
  CONSTRAINT fk_properties_1 FOREIGN KEY (property_type_id) REFERENCES property_types(property_type_id),
  CONSTRAINT fk_properties_2 FOREIGN KEY (agent_id) REFERENCES agents(agent_id),
  CONSTRAINT fk3_properties_3 FOREIGN KEY (city) REFERENCES locations(city)
);
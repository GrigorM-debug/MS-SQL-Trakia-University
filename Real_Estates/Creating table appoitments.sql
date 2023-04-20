use REAL_ESTATES;

CREATE TABLE appointments 
(
  appointment_id INT NOT NULL IDENTITY(1100,1),
  client_id INT NOT NULL,
  agent_id INT NOT NULL,
  appointment_date DATETIME NOT NULL,
  appointment_description VARCHAR(150) NOT NULL,
  appointment_status BIT NULL,
  CONSTRAINT pk_appointments PRIMARY KEY (appointment_id),
  CONSTRAINT fk_appointments_1 FOREIGN KEY (client_id) REFERENCES clients (client_id),
  CONSTRAINT fk_appointments_2 FOREIGN KEY (agent_id) REFERENCES agents (agent_id)
);
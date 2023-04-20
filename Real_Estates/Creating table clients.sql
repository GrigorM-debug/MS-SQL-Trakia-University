USE REAL_ESTATES;

CREATE TABLE clients 
(
  client_id INT NOT NULL IDENTITY(500,1),
  client_pname VARCHAR(50) NOT NULL,
  client_lname VARCHAR(50) NOT NULL,
  client_address VARCHAR(100) NOT NULL,
  client_contact VARCHAR(20) NOT NULL,
  client_email VARCHAR(30) NOT NULL,
  username VARCHAR(30) NOT NULL,
  password VARCHAR(30) NOT NULL,
  CONSTRAINT pk_clients PRIMARY KEY(client_id)
);
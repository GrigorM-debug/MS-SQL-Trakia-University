use REAL_ESTATES;

CREATE TABLE agents
(
  agent_id INT NOT NULL IDENTITY(10,1),
  agent_pname VARCHAR(50) NOT NULL,
  agent_lname VARCHAR(50) NOT NULL,
  agent_address VARCHAR(100) NOT NULL,
  agent_contact VARCHAR(20) NOT NULL,
  agent_email VARCHAR(30) NOT NULL,
  agent_type BIT NOT NULL DEFAULT 0,
  username VARCHAR(30) NOT NULL,
  password VARCHAR(30) NOT NULL,
  CONSTRAINT pk_agents PRIMARY KEY (agent_id)
);
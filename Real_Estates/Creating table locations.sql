use REAL_ESTATES;

CREATE TABLE locations
(
  city VARCHAR(80) NOT NULL,
  description VARCHAR(240) NULL,
  population INT NULL,
  url VARCHAR(45) NULL,
  sea_nearby BIT NULL DEFAULT 0,
  mountain_nearby BIT NULL DEFAULT 0,
  CONSTRAINT pk_locations PRIMARY KEY (city)
);
use REAL_ESTATES;

CREATE TABLE property_types 
(
  property_type_id INT NOT NULL,
  property_type_name VARCHAR(50) NOT NULL,
  CONSTRAINT pk_property_types PRIMARY KEY (property_type_id)
);
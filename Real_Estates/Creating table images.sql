use REAL_ESTATES;

CREATE TABLE images 
(
  image_id INT NOT NULL IDENTITY(1000,1),
  property_id INT NOT NULL,
  image_name VARCHAR(80) NOT NULL,
  image_path VARCHAR(150) NOT NULL,
  CONSTRAINT pk_images PRIMARY KEY (image_id),
  CONSTRAINT fk_images FOREIGN KEY (property_id) REFERENCES properties(property_id)
);
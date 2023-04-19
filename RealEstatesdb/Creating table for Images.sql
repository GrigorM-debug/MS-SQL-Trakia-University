use RealEstatesdb;

--Създаване на таблица за снимки на имотите
CREATE TABLE images(
	image_id INT PRIMARY KEY,
	property_id INT,
	image_name VARCHAR(80),
	image_path VARCHAR(150),
	FOREIGN KEY (property_id) REFERENCES properties(property_id)
);
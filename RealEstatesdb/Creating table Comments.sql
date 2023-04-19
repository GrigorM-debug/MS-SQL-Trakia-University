use RealEstatesdb;

--Създаване на таблица за Коментари
CREATE TABLE comments(
	comment_id INT PRIMARY KEY,
	property_id INT,
	client_id INT,
	comment_status_id TINYINT,
	comment_date DATETIME,
	comment_content VARCHAR(150),
	FOREIGN KEY (property_id) REFERENCES properties(property_id),
	FOREIGN KEY (client_id) REFERENCES Clients(client_id),
	FOREIGN KEY (comment_status_id) REFERENCES comment_statuses(comment_status_id)
);

use RealEstatesdb;

--Създаване на таблица за статус на коментарите
CREATE TABLE comment_statuses(
	comment_status_id TINYINT PRIMARY KEY,
	comment_status VARCHAR(50)
);
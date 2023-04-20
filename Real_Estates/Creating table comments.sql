use REAL_ESTATES;

CREATE TABLE comments 
(
  comment_id INT NOT NULL IDENTITY(150,1),
  property_id INT NOT NULL,
  client_id INT NOT NULL,
  comment_status_id TINYINT NULL,
  comment_date DATETIME NOT NULL DEFAULT getdate(),
  comment_content VARCHAR(150) NOT NULL,
  CONSTRAINT pk_comments PRIMARY KEY (comment_id),
  CONSTRAINT fk_comments_1 FOREIGN KEY (property_id) REFERENCES properties(property_id),
  CONSTRAINT fk_comments_2 FOREIGN KEY (client_id) REFERENCES clients(client_id),
);
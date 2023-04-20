use REAL_ESTATES;

CREATE TABLE comment_statuses
(
  comment_status_id TINYINT NOT NULL,
  comment_status VARCHAR(30) NOT NULL,
  CONSTRAINT pk_comment_statuses PRIMARY KEY (comment_status_id)
);
--CREATE DATABASE Fitness_db COLLATE Cyrillic_General_100_BIN;
--GO

USE Fitness_db;

---- Таблица за членовете на фитнеса
--CREATE TABLE Members (
--    member_id INT PRIMARY KEY NOT NULL,
--    member_pname VARCHAR(50) NOT NULL,
--    member_lname VARCHAR(50) NOT NULL,
--    member_address VARCHAR(100) NOT NULL,
--    member_city VARCHAR(50) NOT NULL,
--    member_contact VARCHAR(50) NOT NULL,
--    member_email VARCHAR(30) NOT NULL,
--    member_image VARCHAR(50) NOT NULL, -- Image will be link
--    member_age INT NOT NULL,
--    member_gender VARCHAR(5) NOT NULL,
--    membership_period VARCHAR(15) NOT NULL,
--    membership_type_id INT NOT NULL,
--   FOREIGN KEY (membership_type_id) REFERENCES Memberships (membership_type_id)
--);

--ALTER TABLE Members DROP COLUMN member_joining_date;
--ALTER TABLE Members ALTER COLUMN member_email VARCHAR(150);

 --Таблица за абонаментите
--CREATE TABLE Memberships (
--    membership_type_id INT NOT NULL PRIMARY KEY,
--    membership_type_name VARCHAR(15) NOT NULL,
--	membership_period VARCHAR(15) NOT NULL,
--	membership_price FLOAT NOT NULL
--);

---- Таблица за заплащанията
--CREATE TABLE Payments (
--    payment_id INT NOT NULL PRIMARY KEY,
--    member_id INT NOT NULL,
--    amount FLOAT NOT NULL,
--    payment_date DATETIME NOT NULL,
--    membership_type_id INT NOT NULL,
--    training_plan_id INT,
--    diet_plan_id INT,
--    promotion_id INT,
--	  staff_id INT,	
--    FOREIGN KEY (membership_type_id) REFERENCES Memberships (membership_type_id),
--    FOREIGN KEY (training_plan_id) REFERENCES Training_plans (training_plan_id),
--    FOREIGN KEY (diet_plan_id) REFERENCES Diet_plans (diet_plan_id),
--    FOREIGN KEY (promotion_id) REFERENCES Promotions (promotion_id),
--    FOREIGN KEY (member_id) REFERENCES Members (member_id),
--	  FOREIGN KEY (staff_id) REFERENCES Staff (staff_id)	
--);

-- Таблица за промоциите
--CREATE TABLE Promotions (
--    promotion_id INT NOT NULL PRIMARY KEY,
--    promotion_name VARCHAR(20) NOT NULL,
--    promotion_link VARCHAR(100) NOT NULL,
--    promotion_price FLOAT NOT NULL,
--    member_id INT NOT NULL,
--    FOREIGN KEY (member_id) REFERENCES Members (member_id)
--);

--ALTER TABLE Promotions ALTER COLUMN promotion_name VARCHAR(100);

-- Таблица за тренировките
--CREATE TABLE Workouts (
--    workout_id INT NOT NULL PRIMARY KEY,
--    workout_name VARCHAR(20) NOT NULL,
--    workout_description VARCHAR(50) NOT NULL
--);

-- Таблица за персонала и треньорите
--CREATE TABLE Staff (
--    staff_id INT PRIMARY KEY NOT NULL,
--    staff_pname VARCHAR(50) NOT NULL,
--    staff_lname VARCHAR(50) NOT NULL,
--    staff_position VARCHAR(20) NOT NULL,
--    staff_address VARCHAR(100) NOT NULL,
--    staff_city VARCHAR(50) NOT NULL,
--    staff_contact VARCHAR(20) NOT NULL,
--    staff_email VARCHAR(50) NOT NULL,
--    staff_image VARCHAR(100) NOT NULL, -- Image will be link
--    staff_years_of_experience VARCHAR(50), -- This is only for trainers
--    staff_price_for_month FLOAT NOT NULL, -- This is the price that member pay to train with the trainer
--    staff_certificate VARCHAR(50), -- This is only for trainers
--    staff_working_schedule VARCHAR(20) NOT NULL
--);

-- Таблица за тренировъчните планове, които се предлагат от треньрите
--CREATE TABLE Training_plans (
--	training_plan_id INT NOT NULL PRIMARY KEY,
--	workout_id INT NOT NULL,
--	workout_date DATETIME NOT NULL,
--	staff_id INT NOT NULL, -- Trainer ID
--	training_plan_price FLOAT NOT NULL,
--	FOREIGN KEY (workout_id) REFERENCES Workouts (workout_id),
--	FOREIGN KEY (staff_id) REFERENCES Staff (staff_id)
--);


-- Таблица за хранителните режими, които се предлагат от треньорите
--CREATE TABLE Diet_plans (
--	diet_plan_id INT NOT NULL PRIMARY KEY,
--	staff_id INT NOT NULL,
--	diet_plan_name VARCHAR(20) NOT NULL,
--	diet_plan_description VARCHAR(50),
--	diet_plan_number_of_meals INT NOT NULL,
--	diet_plan_calories_per_day INT NOT NULL,
--	diet_plan_grams_of_protein_per_day INT NOT NULL,
--	diet_plan_grams_of_carbs_per_day INT NOT NULL,
--	diet_plan_grams_of_fats_per_day INT NOT NULL,
--	diet_plan_price FLOAT NOT NULL,
--	FOREIGN KEY (staff_id) REFERENCES Staff (staff_id)
--);

--ALTER TABLE Diet_plans ALTER COLUMN diet_plan_description VARCHAR(150);
--ALTER TABLE Diet_plans ALTER COLUMN diet_plan_name VARCHAR(100);

-- Таблица за резултатите на Членовете
--CREATE TABLE Member_results (
--	result_id INT NOT NULL PRIMARY KEY,
--	member_id INT NOT NULL,
--	staff_id INT NOT NULL, -- Trainer ID
--	weight_before FLOAT NOT NULL,
--	weight_now FLOAT NOT NULL,
--	member_result_image VARCHAR(100) NOT NULL, -- Image will be link
--	FOREIGN KEY (member_id) REFERENCES Members (member_id),
--	FOREIGN KEY (staff_id) REFERENCES Staff (staff_id)
--);

-- Таблица за коментарите на Членовете относно техните треньори, хранителните режими и тренировъчните планове, които са закупили
--CREATE TABLE Member_comments (
--	comment_id INT NOT NULL PRIMARY KEY,
--	staff_id INT NOT NULL,
--	member_id INT NOT NULL,
--	training_plan_id INT NOT NULL,
--	diet_plan_id INT NOT NULL,
--    comment_date DATETIME NOT NULL,
--	comment_content VARCHAR(150) NOT NULL,
--	FOREIGN KEY (staff_id) REFERENCES Staff (staff_id),
--	FOREIGN KEY (member_id) REFERENCES Members (member_id),
--	FOREIGN KEY (training_plan_id) REFERENCES Training_plans (training_plan_id),
--	FOREIGN KEY (diet_plan_id) REFERENCES Diet_plans (diet_plan_id)
--);


--ALTER TABLE Member_comments DROP COLUMN comment_status_id;
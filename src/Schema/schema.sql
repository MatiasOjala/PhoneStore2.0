SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS phonecondition;
DROP TABLE IF EXISTS phone;
DROP TABLE IF EXISTS application_user;
SET FOREIGN_KEY_CHECKS=1;
CREATE TABLE phonecondition
(id BIGINT NOT NULL AUTO_INCREMENT
, name VARCHAR(100) NOT NULL

,PRIMARY KEY (id)
);
INSERT INTO phonecondition (name)
VALUES ("Excellent")
, ("OK"), ("Bad");
CREATE TABLE phone (
id BIGINT NOT NULL AUTO_INCREMENT
, make VARCHAR(50) NOT NULL
, model VARCHAR(50) NOT NULL
, capacity VARCHAR(50) NOT NULL
, makeYear INT
, price BIGINT
, phoneconditionid BIGINT
, PRIMARY KEY (id)
, FOREIGN KEY (phoneconditionid) REFERENCES phonecondition(id));
INSERT INTO phone (make, model, capacity, makeYear, price,
phoneconditionid)
VALUES ('iPhone', '13 Pro', '128gb', 2021, 1000, 1),
('Samsung','Galaxy S10', '64gb', 2020, 600, 3);
CREATE TABLE application_user
(id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY
, firstname VARCHAR(100) NOT NULL
, lastname VARCHAR(100) NOT NULL
, role VARCHAR(100) NOT NULL
,username VARCHAR(250) NOT NULL
,password_hash VARCHAR(250) NOT NULL);
INSERT INTO application_user (firstname, lastname, username, password_hash,
role)
VALUES ('Matti', 'Meikalainen', 'user',
'$2a$10$qTuhvwviu0XCo5UWYECE5eHzFuXV6AfndNOPjF1JDIJOs7Mz7pDzG', 'USER'),
('Meikalainen', 'Matti', 'admin',
'$2a$10$ng6O4VyeXpWG12/WkA7AI.d.AsINXpIgJLd3PG1k9VIeR0OQbsB6G', 'ADMIN');
SELECT * FROM phone;
SELECT * FROM phonecondition;
SELECT * FROM application_user;
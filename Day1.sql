CREATE DATABASE learn_sql;
USE learn_sql;

SELECT 1+1;


USE learn_sql;
CREATE TABLE sample_users (

id INT,
name VARCHAR(50),
email VARCHAR(100)


);

USE learn_sql;
DESCRIBE sample_users;

USE learn_sql;
INSERT INTO sample_users (id, name, email) VALUES (3, 'Dinesh','dinesh@gmail.com');


USE learn_sql;
SELECT * FROM sample_users;

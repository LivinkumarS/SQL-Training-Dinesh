USE learn_sql;
INSERT INTO sample_users VALUES (2,'alen','alen@gmail.com'), (3,'jack','jack@gmail.com'), (4, 'emma', 'emma@gmail.com'),
(4, 'oliver', 'oliver@gmail.com'),
(6, 'ava', 'ava@gmail.com'),
(45, 'liam', 'liam@gmail.com'),
(56, 'sophia', 'sophia@gmail.com'),
(9, 'noah', 'noah@gmail.com'),
(10, 'isabella', 'isabella@gmail.com'),
(11, 'elijah', 'elijah@gmail.com'),
(12, 'mia', 'mia@gmail.com'),
(13, 'lucas', 'lucas@gmail.com'),
(4, 'amelia', 'amelia@gmail.com'),
(15, 'logan', 'logan@gmail.com'),
(16, 'harper', 'harper@gmail.com'),
(17, 'james', 'james@gmail.com'),
(18, 'evelyn', 'evelyn@gmail.com'),
(19, 'benjamin', 'benjamin@gmail.com'),
(20, 'abigail', 'abigail@gmail.com');


USE learn_sql;
SELECT * FROM sample_users;


USE learn_sql;
SELECT * FROM sample_users WHERE name LIKE '%jam%';




SELECT * FROM sample_users WHERE name LIKE '%jam%' OR id > 17 LIMIT 2;


select * from sample_users where id >= 10 AND id <= 20;


select * from sample_users where id BETWEEN 10 AND 20;

SeleCt * From sample_users where id<=15 Order by id desc;



SeleCt * From sample_users where id<=15 Order by name ASC, id desc;


SELECT * FROM sample_users WHERE name LIKE 'A%' AND id BETWEEN 5 AND 15 ORDER BY name asc, id desc LIMIT 3;
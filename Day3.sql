USE learn_sql;

CREATE TABLE users (
    id INT AUTO_INCREMENT primary key,
    userName VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    isActive varchar(10) default 'inactive'
);

DESCRIBE users;

INSERT INTO users (userName, email) VALUES ('dinesh','dinesh@gmail.com'),('livin','livin@gmail.com'),('trisha','trisha@gmail.com');

UPDATE users SET userName='livinkumar s', email='slivinkumarkrr@gmail.com' where id=4; 

select * from users;

DELETE FROM users WHERE id=5;

SET SQL_SAFE_UPDATES=1;
DELETE FROM users WHERE isActive='inactive';


DELETE FROM users;

CREATE TABLE posts (
  id INT auto_increment primary key,
  title  varchar(50) NOT NULL,
  content text,
  user_id int,
  foreign key (user_id) references users(id)
);

INSERT INTO posts (title, content, user_id) values ('Australian Deputy PM Marles to visit India', 'The Deputy Prime Minister’s visit to India coincides with the fifth anniversary of the firming up of the Australia and India Comprehensive Strategic Partnership, which underpins the two countries’ relationship and shared vision for the Indian Ocean, an Australian readout said.',12 ),
(']India’s virtual digital assets revolution','This vibrancy may seem surprising, given the rocky journey of crypto, known as ‘Virtual Digital Assets’ (VDA), in India, within the domestic regulatory and policy landscape. In May 2025, the Supreme Court of India questioned the absence of comprehensive and clear crypto regulation in India, with a remark, “Banning may be shutting your eyes to ground reality”. This observation highlights the dissonance between VDA reality and VDA policy which has created significant challenges for regulators and market players.',13),
('The university under attack','There is an inherent tension in the social role of universities. On one side they are required to generate socially relevant knowledge to meet the evolving challenges society faces while on the other, they are expected to reproduce the existing societal structures.

To fulfil their creative role, academia requires autonomy. The heart and soul of creativity is what makes societies dynamic. Unfortunately, rulers while paying lip service to this are hollowing it out in practice.',14);


UPDATE posts SET title='India’s virtual digital assets revolution' where id=5;

SELECT * FROM posts;
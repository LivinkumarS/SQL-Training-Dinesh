USE learn_sql;

DROP TABLE sample_users;

CREATE TABLE users (
id INT AUTO_increment PRIMARY KEY,
userName varchar(50) NOT NULL
);

DESCRIBE users;

ALTER TABLE users ADD email VARCHAR(100);

ALTER TABLE users ADD dummy VARCHAR(100);

RENAME TABLE users TO userData;


ALTER TABLE users DROP COLUMN dummy;

ALTER TABLE users RENAME COLUMN dummy TO emptyCol;


ALTER TABLE users MODIFY emptyCol int;


DROP TABLE userdata;




CREATE TABLE users (
id int auto_increment primary key,
name varchar(50) not null
);


CREATE TABLE posts (
id int auto_increment primary key,
title varchar(100) not null,
content text,
userId int,
foreign key (userId)  references users(id)
);

insert into posts (title, content, userId) values 
('post7','content content content content content content content content content content content content content content content content content content content content content content ',5),
('post8','content content content content content content content content content content content content content content content content content content content content ',5);

select * from users;

insert into users (name) values ('ganesh');


select * from users INNER join posts ON users.id= posts.userId;

DELETE FROM users where id=4;


CREATE TABLE marks(
userId int not null,
mark int default 0
);



insert into marks (userId,mark) values (12,79);


insert into users (name) value ('umesh');

select  * from users;

select users.id, users.name, marks.mark from users inner join marks on users.id=marks.userId order by marks.mark DESC limit 3;



select users.id, users.name, marks.mark from users right join marks on users.id=marks.userId;

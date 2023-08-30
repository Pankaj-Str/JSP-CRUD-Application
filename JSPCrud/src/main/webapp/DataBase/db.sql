show databases;

create database cwp;

use cwp;

-- create table register(
-- 	id int auto_increment primary key, 
-- 	name varchar(100),
--     password varchar(100),
--     email varchar(100),
--     sex varchar(20),
--     country varchar(100)
-- );

-- drop table register;

-- select * from register;


CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
COMMIT;

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'admin';

select * from users;
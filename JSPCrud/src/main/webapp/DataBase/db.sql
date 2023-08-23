show databases;

create database cwp;

use cwp;

create table register(
	id int auto_increment primary key, 
	name varchar(100),
    password varchar(100),
    email varchar(100),
    sex varchar(20),
    country varchar(100)
);

drop table register;

select * from register;



#Data Manipulation Language
#Insert update delete
show databases;
create database if not exists empresa;
use empresa;
show databases; 
create table clientes (
	idCliente int not null,
    nomeCliente varchar(65) not null,
    sexoCliente enum ('m', 'f'),
    ufNascimento char(2),
    dataNascimento date
);

alter table clientes modify idCliente int not null primary key auto_increment;
alter table clientes modify nomeCliente varchar(100) not null;
describe clientes;
show tables;
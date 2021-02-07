create database db_chaves; 
use db_chaves;

create table Pessoas
(ID_Pessoa integer PRIMARY KEY AUTO_INCREMENT,Nome varchar(255));

CREATE TABLE Carro
	(ID_Carro integer PRIMARY KEY AUTO_INCREMENT,
    Nome varchar(255),
    Marca varchar(255),
    ID_Pessoa integer);

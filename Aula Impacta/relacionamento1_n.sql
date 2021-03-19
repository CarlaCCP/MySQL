create database relacionamentos;
use relacionamentos;
drop table conjunge;
drop table funcionarios;
drop database relacionamentos;

create table funcionarios (
	fun_id int auto_increment,
    fun_nome varchar(100) not null,
    fun_sexo enum ('m','f') not null default 'f',
    fun_salario decimal(10,2),
	car_id int not null,
    primary key (fun_id),
    foreign key (car_id) references cargos(car_id)
	
);

insert funcionarios (fun_nome, fun_salario, car_id) values 
					("Carla", 2500.45, 2),
                    ("Cristina", 2700.45, 3),
                    ("Conceição", 3000.45, 1),
                    ("Paula", 2500.45, 1),
                    ("Victor", 5000.45, 3),
                    ("Augusto", 2500.45, 3),
					("Saade", 2500.45, 1);


select * from funcionarios;                    
create table cargos (
	car_id int auto_increment,
    car_nome varchar(100),
    
    primary key (car_id)
);

insert into cargos (car_nome) values ("Jornalista"), ("Programador full stack"), ("Back end"), ("Front-end");
insert into cargos (car_nome) values ("Escritor"),("Arquiteto");
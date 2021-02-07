create database db_rh2;
use db_rh2;

create table tb_cargo (
	id_departamento int auto_increment,
    departamento varchar (50),
    salario decimal(10,2),
	primary key(id_departamento)
);

  
create table tb_funcionario (
	id int auto_increment,
    nome varchar(10),
    idade int,
    cargos int not null,
    primary key (id),
    foreign key (cargos) references tb_cargo (id_departamento)
);


#Populando 
insert into tb_cargo (departamento, salario) values 
		("Secretaria", 4000.00),
		("Tecnologia", 7000.00),
        ("BI", 5000.00),
        ("Marketing", 4000.00),
        ("Diretoria", 10000.00);
select * from tb_cargo;

insert into tb_funcionario (nome, idade, cargos) values 
			("Carla" , 24 , 2),
            ("Cristina" , 24 , 3),
            ("Joao" , 30 , 4),
            ("Priscila" , 25 , 1),
            ("Debora" , 48 , 5),
            ("Maria" , 50 , 5),
            ("Victor" , 26 , 3),
            ("Vinicius" , 30 , 4),
            ("Stephanie" , 25 , 4),
            ("Pedro" , 24 , 5),
            ("Bruna" , 30 , 1),
            ("Marcio" , 20 , 1),
            ("Thayna" , 24 , 2),
            ("Carol" , 30 , 3),
            ("Priscila" , 24 , 1);
            
select * from tb_cargo where salario > 2000.00;
select * from tb_cargo where salario >1000.00 and salario <2000.00;
select * from tb_funcionario where nome like "%c%";

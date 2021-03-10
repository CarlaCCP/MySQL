#criando o banco de dados
create database db_rh;
use db_rh;

#criando a tabela
create table funcionarios_rh( 
	id_funcionario int auto_increment,
    nome varchar (20) not null,
    departamento varchar (100) not null,
    salario decimal (10,2) not null,
    idade int not null,
    primary key (id_funcionario)
);

#populando
insert into funcionarios_rh (nome, departamento, salario, idade) 
values ("Carla", "Desenvolvimento", 3000.00, 24),
		("Joao", "Desenvolvimento", 3000.00, 18),
        ("Jailson", "Diretoria", 17000.00, 55),
        ("Maria", "Diretoria", 17000.00, 53);

#selecionando 
select * from funcionarios_rh where salario >2000.00;
select * from funcionarios_rh where salario < 2000.00;

#Atualizando 
update funcionarios_rh 
set idade = 30
where id_funcionario = 4;

select * from funcionarios_rh;


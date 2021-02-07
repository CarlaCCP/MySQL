create database Ford;
drop database Ford;
show databases;
use aula1;
create table funcionarios (
	
    nome varchar(30),
    idade tinyint,
    sexo char(1),
    peso float,
    altura float,
    nacionalidade varchar(20)
);
insert into funcionarios values ("Juliana", 22, "f", 60 ,1.65, "Brasileira"); #desta forma vc precisa colocar todas as variaveis 
insert into funcionarios (nome, sexo) values ("Marcio", "m"); #desse jeito pode colocar o que achar melhor 
#Outra forma 
#POST
insert into funcionarios values
	 ("Marcela", 22, "f", 60 ,1.65, "Brasileira"),
	 ("Gabriel", 22, "f", 60 ,1.65, "Brasileira"),
	 ("João", 22, "f", 60 ,1.65, "Brasileira");
    
#PUT = UPDATE
update funcionarios set nacionalidade = "Argentino" where nome = "Gabriel";
show tables; #mostra todas as tabelas, comando gerencial
describe funcionarios; #descreve os atributos
#GET
select * from funcionarios; #asterico quer dizer tudo
select nome, nacionalidade from funcionarios;
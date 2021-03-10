rename table funcionarios1 to colaboradores;
alter table colaboradores add column CPF int first; #senão é colocada por ultimo
alter table colaboradores add column EMAIL varchar (30);
alter table colaboradores add column SOBRENOME varchar (30) after nome;
alter table colaboradores modify column nome varchar(20);
alter table colaboradores drop column SOBRENOME;
select * from colaboradores;
describe colaboradores;
select * from colaboradores;
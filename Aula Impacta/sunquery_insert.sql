use relacionamentos;
-- exemplo de criacao de tabela tipo backup
create table funcionarios2 as select * from funcionarios;
select * from funcionarios2; -- não tem as chaves

create table funcionarios3 like funcionarios; 
select * from funcionarios3; -- possui as chaves e não possui o conteúdo

-- inserindo o contéudo, não precisa colocar values
insert into funcionarios3  
(
select * from funcionarios
);
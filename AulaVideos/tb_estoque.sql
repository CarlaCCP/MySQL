use db_Estoque;
create table tb_marcas (
	id bigint(5) auto_increment, #o proprio sistema irá incrementar o id
    nome varchar (20) not null, #não aceita nulo
    ativo boolean,
    primary key (id)
);
#consulta
select *from tb_marcas;

#inserindo
insert into tb_marcas (nome, ativo) values ('Nike', true);
insert into tb_marcas (nome, ativo) values ('Fatal Surf', false);

#update - modificando dados
update tb_marcas set nome = 'Fatal Surf!' , ativo = true
where id = 2;

#formas de select
select * from tb_marcas where id =2; #diferente <> 
select nome from tb_marcas;

#deletar 
delete from tb_marcas where id =1;
select * from tb_marcas;




use db_Estoque;
create table tb_produtos (
	id bigint auto_increment,
    nome varchar(30) not null,
	preco decimal (10,2),
    marca_id bigint not null,
    primary key (id),
    foreign key (marca_id) references tb_marcas (id)
    #referencia a chave, depois a tabela e depois o atributo
);

#populando
insert into tb_produtos (nome, preco, marca_id)
values ("Camisa ", 22.99, 3);
select *from tb_produtos;
select *from tb_marcas;

insert into tb_produtos (nome, preco, marca_id)
values ("Tênis ", 69.90, 3);


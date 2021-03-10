create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria (
	id int auto_increment,
    cortes varchar (50),
	peso decimal (5,2),
    primary key (id)
);

create table tb_produtos (
id_produtos int auto_increment,
tipo_carne varchar (50),
preco decimal (5,2),
quantidade int,
id_categoria int not null,
primary key (id_produtos),
foreign key (id_categoria) references tb_categoria (id)
);

insert into tb_categoria (cortes, peso) values 
	("Alcatra", 1.0),
    ("Picanha", 2.0),
    ("Patinho", 2.0),
    ("Fraldinha", 2.0),
    ("Filé" , 2.0);
    
select * from tb_categoria;

insert into tb_produtos (tipo_carne, preco, quantidade, id_categoria) values
	("Carne Bovina", 30.00, 2,1),
	("Carne Bovina", 30.00, 3,4),
    ("Carne Bovina", 50.00, 3,5),
    ("Carne Bovina", 20.00, 1,3),
    ("Carne Bovina", 25.00, 1,2),
    ("Carne Bovina", 60.00, 1,1),
    ("Carne Bovina", 50.00, 1,2),
    ("Carne Bovina", 70.00, 2,2);
    
select * from tb_produtos where preco > 50.00;
select * from tb_produtos where preco >= 3.00 and preco <= 60.00;
select * from tb_categoria where cortes like "%co%";
#inner join

select * from  tb_categoria
inner join  tb_produtos
on  tb_categoria.id = tb_produtos.id_produtos;

select tb_categoria.peso from tb_categoria
inner join tb_produtos
on tb_categoria.id = tb_produtos.id_produtos;
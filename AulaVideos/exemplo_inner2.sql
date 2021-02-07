#Exemplo inner join
#trará somente o que for comum entre duas tabelas
use db_estoque;
select * from tb_produtos
inner join tb_marcas on tb_marcas.id = tb_produtos.marca_id;
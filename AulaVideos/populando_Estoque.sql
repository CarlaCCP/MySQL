use db_Estoque;
INSERT INTO tb_marcas (nome, ativo) VALUES ("Nike", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("H&M", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Zara", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Louis Vuitton", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Adidas", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Uniqlo", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Hermès", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Rolex", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Gucci", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Cartier", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Polo", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Armany", true);

select *from tb_marcas;
select *from tb_marcas where nome like "%a%"; #filtra pelo caracter
select *from tb_marcas where ativo = true;


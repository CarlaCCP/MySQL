use db_cds;
-- Exercícios com uma tabela e calculos
--  tabela titulos 
-- 	01) TODOS
select * from titulos;

-- 	02) CODIGO 1, 2 OU 3
select * from titulos where cod_tit <=3;

-- 	03) CODIGO DIFERENTE DE 2, 6, 9
select * from titulos where cod_tit !=2 and cod_tit !=6 and cod_tit !=9;

-- 	04) PRECO DE VENDA ENTRE 100 e 150
select * from titulos where val_cd >= 100 and val_cd <= 150;
select * from titulos where val_cd between 100 and 150;

-- 	05) PRECO DE CUSTO MENOR QUE 100
select * from titulos where val_compra < 100 ;

-- 	06) NOME COMEÇADO POR CONSOANTE
select * from titulos where nome_cd not like "a%"; -- ...
select * from titulos where nome_cd regexp '^[^AEIOU]'; -- ...

--  07) NOME QUE CONTENHA O TEXTO 'saber'
select * from titulos where nome_cd like "%saber%";

-- 	08) NOME INICIADO COM 'Acabou'
select * from titulos where nome_cd like "acabou%";	

-- 	09) LUCRO MAIOR QUE 50%
select 
		nome_cd as "Nome cd",
        val_compra as "Preço compra",
        val_cd as "Preço venda",
        val_cd - val_compra as "Lucro",
        round ((val_cd - val_compra)*100/val_cd,2) as "Lucro em porcentagem",
        round(val_compra *1.5, 2) as "Projeção de 50% de lucro"
from titulos where val_cd  > val_compra* 1.5;
-- 	10) LUCRO MENOR QUE 100%
select * from titulos where val_cd < val_compra * 2;

-- 	11) LUCRO MAIOR QUE R$ 100.00
select * from titulos where (val_cd - val_compra) > 100;
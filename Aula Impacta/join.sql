use relacionamentos;
show tables;
select * from funcionarios;
insert into cargos (car_nome) values ("Escritor"),("Arquiteto");
-- crusa tabelas sem critério algum
-- cross é opcional e pode ser omitida
select * from funcionarios, cargos;
select * from funcionarios cross join cargos;
select * from funcionarios join cargos;

-- inner join, quando existe critério de relacionamento
-- select * from tabela1 inner join tabela2 ON tabela1.pk = tabela2.fk
-- no ON ficará o critério de relacionamento 
select * from funcionarios inner join cargos on funcionarios.car_id = cargos.car_id;
select fun_nome as 'Funcionarios', car_nome as "Cargos" 
	from funcionarios 
    inner join cargos on 
    funcionarios.car_id = cargos.car_id;

-- Left Outer Join
-- A tabela da esquerda trará todos os registro independente de relacionamento
-- A tabela da direta será juntada dentro da regra de relacionamento
-- A tabela que estiver a esquerda do join trará todos os resultados
select * from funcionarios left outer join cargos on funcionarios.car_id = cargos.car_id;

-- right outer join
select * from funcionarios right outer join cargos on funcionarios.car_id = cargos.car_id;
select fun_nome as 'Funcionarios', 
		car_nome as "Cargos"  
        
		from funcionarios right outer join cargos on funcionarios.car_id = cargos.car_id;
use relacionamentos;
select * from cargos;
-- Subquery será quase sempre declarada na clausula where como filtro
-- selecionar por cargo
select * from cargos where car_nome = "Jornalista";
select car_id from cargos where car_nome = "Jornalista";


select * from funcionarios where car_id = 1;
-- ou
select * from funcionarios where car_id = (
		select car_id from cargos where car_nome = "Jornalista" -- subquery
);

-- Qual o funcionario que recebe mais?
-- 1 forma, mais simples
select * from funcionarios
order by fun_salario desc limit 1;

-- 2 forma
select * from funcionarios where fun_salario = (5000.45);

select * from funcionarios where fun_salario = (
			select max(fun_salario) from funcionarios
);
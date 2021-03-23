use relacionamentos;

-- Aumentar o salario de jornalistas

select fun_nome as "Funcionario",
		fun_salario as "Salario",
        (fun_salario *1.2) as "Aumento"
			from funcionarios where car_id = 
			(
				select car_id from cargos where car_nome = "Jornalista"
			);
-- atualizando o aumento
update funcionarios set fun_salario = fun_salario * 1.2 where car_id = 
(
select car_id from cargos where car_nome = "Jornalista"
);

-- deletando jornalistas

delete from funcionarios where car_id = 
(
select car_id from cargos where car_nome = "Jornalista"
);
use relacionamentos;
show tables;
select * from funcionarios;

-- max e min
select max(fun_salario) from funcionarios;
select min(fun_salario) from funcionarios;

-- soma
select sum(fun_salario) as "Soma" from funcionarios;

-- soma entre string
select * from cargos;
select group_concat(car_nome) as "Cargos" from cargos;

-- count e avg (média)
select count(fun_nome) from funcionarios;
select count(*) from funcionarios; -- dará prioridade para o valor que mais se repete nas colunas, é pouco 
select count(fun_nome) as "Pessoas" , sum(fun_salario) as "Soma salário", avg(fun_salario) as "Média salario" from funcionarios;


-- totalização de dados
select count(fun_nome) as "Qtd funcioarios",
		car_id
        from funcionarios
        group by car_id
        with rollup;

-- Como saber o quanto gasta por categoria

select car_nome as "Cargos",
		group_concat(fun_nome) as "Funcionarios",
        sum(fun_salario) as "Salarios"
        from funcionarios f
        left join cargos c on f.car_id = c.car_id
        group by car_nome
        with rollup;

-- outra forma
select car_nome as "Cargos",
		group_concat(fun_nome) as "Funcionarios",
        sum(fun_salario) as "Salarios"
        from funcionarios f
        left join cargos c on f.car_id = c.car_id
        group by car_nome

union

select "Total",
		"---",
        sum(fun_salario)
        from funcionarios;

-- Obs, em uma totalização/agregação não pode usar where, usa-se having
select car_nome as "Cargos",
		group_concat(fun_nome) as "Funcionarios",
        sum(fun_salario) as "Salarios"
        from funcionarios f
        left join cargos c on f.car_id = c.car_id
        group by car_nome
        having sum(fun_salario) >= 3000;
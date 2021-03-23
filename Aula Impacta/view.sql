-- são scripts de consultas que são recorrentes ou limitadas a usuarios
-- uma tabela normal
use relacionamentos;

select * from funcionarios;

create view v_funcionarios as 
		select 
				fun_nome as "Nome",
				fun_sexo as "Sexo funcionario",
				fun_salario as "Salario"
		from funcionarios f
		join cargos c
		on f.car_id = c.car_id;

select * from v_funcionarios;
select Nome, Salario from v_funcionarios;

-- manipulando views
show create view v_funcionarios;

alter view v_funcionarios as
		select			
				fun_nome as "Nome",
				case fun_sexo
					when 'f' then "pessoas incriveis"
					when 'm' then "Masculino"
				end as "Sexo funcionario",
				fun_salario as "Salario"
		from funcionarios f
		join cargos c
		on f.car_id = c.car_id;
-- ou
create or replace view v_funcionarios as
		select			
				fun_nome as "Nome",
				case fun_sexo
					when 'f' then "pessoas incriveis"
					when 'm' then "Masculino"
				end as "Sexo",
				fun_salario as "Salario"
		from funcionarios f
		join cargos c
		on f.car_id = c.car_id;
        

-- para deletar
drop view v_funcionarios;

-- Criando uma view
-- formatando salarios
create or replace view v_final as
		select 
			Nome,
			Sexo,
            replace (
				replace (
					replace(
						format(Salario,2)
						,'.', '@') 
					, ',', '.')
			, '@', ',')
            as "Salario"
        from v_funcionarios
;
select * from v_final;


-- Views Utilizáveis

create or replace view v_funcionarios as
		select		
				fun_id,
				fun_nome as "Nome",
				case fun_sexo
					when 'f' then "pessoas incriveis"
					when 'm' then "Masculino"
				end as "Sexo",
				fun_salario as "Salario",
                car_nome as "Cargos"
		from funcionarios f
		join cargos c
		on f.car_id = c.car_id;
        
select * from v_funcionarios;
select * from funcionarios;
update v_funcionarios set Nome = "Lucas" where fun_id = 10; -- somente quando n existe join
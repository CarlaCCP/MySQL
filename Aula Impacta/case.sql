-- Estrutura de controle
use relacionamentos;
select * from funcionarios;

select fun_nome as "Funcionarios",
		case fun_sexo
			when 'm' then "Masculino"
			when "f" then "Pessoas incriveis"
			else "Não informado"
        end 
        as "Sexo"
from funcionarios;

-- quando o valor for null
select 
		fun_nome as "Funcionario",
		case
        when car_nome is null then "Não informado"
        when car_nome is not null then car_nome
        end as "Cargo"
        from 
	funcionarios f
left join 
	cargos c on 
    f.car_id = c.car_id;


-- Faixa de valores
select 
		fun_nome as "Funcionario",
        
		case
        when fun_salario >= 3000 then "Não informado"
        else fun_salario
        end as "Salarios"
        from 
		funcionarios f
left join 
	cargos c on 
    f.car_id = c.car_id;

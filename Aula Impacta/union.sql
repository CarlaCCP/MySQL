use relacionamentos;
-- junta duas consultas, já que não existe full join no mySQL
-- union all junta todas as informações das 2 tabelas
-- union não repetirá dados
select * from funcionarios left outer join cargos on funcionarios.car_id = cargos.car_id
UNION 
select * from funcionarios right outer join cargos on funcionarios.car_id = cargos.car_id;
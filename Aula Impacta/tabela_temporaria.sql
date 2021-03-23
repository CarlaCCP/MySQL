use relacionamentos;
desc funcionarios;


create temporary table funcionarios_table like funcionarios;
select * from funcionarios_table ;

create temporary table tamp as select * from v_funcionarios;
select * from tamp;
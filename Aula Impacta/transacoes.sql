use relacionamentos;
start transaction;
update funcionarios set fun_salario = fun_salario *1.2;
select * from funcionarios;
rollback;
commit;
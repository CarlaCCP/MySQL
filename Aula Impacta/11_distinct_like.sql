use empresa;
select distinct ufNascimento from clientes;
-- like é menos performática
-- pq irá análisar a string primeiro
select * from clientes where nomeCliente like "m%"; -- os que começam com m e terminam de qualquer outro jeito
select * from clientes where nomeCliente like "%m%"; -- contém m
select * from clientes where nomeCliente not like "m%"; -- os que não começam com m
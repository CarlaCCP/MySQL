use empresa;
-- clausulas between

select * from clientes where idCliente >=5 and idCliente <=10;
select * from clientes where idCliente between 5 and 10;
select * from clientes where idCliente not between 5 and 10;

-- clausula in
select * from clientes where idCliente = 5 or idcliente = 10 or idcliente = 15;
select * from clientes where idCliente in (5,10,15);
select * from clientes where idCliente not in (5,10,15);

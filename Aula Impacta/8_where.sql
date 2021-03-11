use empresa;
#Operadores de comparação 
select * from clientes where idCliente = 4;
select * from clientes where ufNascimento = "RJ";
select * from clientes where ufNascimento != "RJ";
select * from clientes where idCliente <> 7; -- todos menos o 3
select * from clientes where idCliente > 10; 
select * from clientes where idCliente >= 10; 
select * from clientes where idCliente < 10;

#Operadores lógicos 

select * from clientes where idCliente < 10 and ufNascimento <> 'sp';
select * from clientes where idCliente < 10 or ufNascimento != 'sp';
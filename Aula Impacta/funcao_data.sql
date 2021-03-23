use empresa;
show tables;
select upper (
		nomeCliente
			) , 
		lcase(
        ufNascimento
				) from clientes;
-- mudando realmente os dados
update clientes set ufNascimento = ucase(ufNascimento);
select * from clientes;

-- datas
select now(); -- traz a data e hora atual
select date_format(now(), '%d/%m/%Y') as 'data';
select date_format(dataNascimento, '%d/%m/%y') as 'data' from clientes where dataNascimento is not null;
select year(dataNascimento) as 'data' from clientes where dataNascimento is not null;
select month(dataNascimento) as 'data' from clientes where dataNascimento is not null;

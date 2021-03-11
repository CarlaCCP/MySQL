use empresa;
#DQL DATA QUERY LANGUAGE - SELECT
select * from clientes;

#Escolhendo campos
select nomeCliente , dataNascimento from clientes;
select *, nomeCliente from clientes;

#com apelido para colunas, 'as' pode ser omitido, porém é uma boa prática colocar
select nomeCliente as 'Nome do cliente' , dataNascimento as 'Data' from clientes;

#Coluna falsa para gerar valores
select nomeCliente as 'Nome do cliente' , 
	dataNascimento as 'Data',
    idCliente * 1000 as 'Salario',
    'Brasileiro' as 'Nascionalidade'
    from clientes;

#Ordenação, obs: é bem pesada para o sistema
#CTRL + D duplica a linha
select * from clientes order by ufNascimento;
select * from clientes order by ufNascimento, dataNascimento;
select * from clientes order by ufNascimento ASC, dataNascimento DESC;
select * from clientes order by 4 ASC, 5 desc;

#Usando colunas falsas
select nomeCliente as 'Nome do cliente' , 
	dataNascimento as 'Data',
    idCliente * 1000 as 'Salario',
    'Brasileiro' as 'Nascionalidade'
    from clientes
    order by idCliente;
    
#Com limite
select * from clientes limit 3; -- somente as 3 primeiras linhas
select * from clientes limit 3,3; -- somente as 3 primeiras linhas a partir do 3 
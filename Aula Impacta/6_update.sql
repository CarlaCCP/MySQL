use empresa;
show tables;
#Por segurança update e delete devem identificar a chave primária
#em algumas versões do mySQL, esta não está configurada

select * from clientes;

update clientes 
	set 
    dataNascimento = "2002-01-19" , 
    ufNascimento = "sc" 
    where idCliente = 3;

#Quando o campo é nulo

update clientes
	set
    dataNascimento = "1996-10-18",
    ufNascimento = "SP"
    where dataNascimento is null;
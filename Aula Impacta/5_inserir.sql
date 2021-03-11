use empresa;
#Insert declaratório: declaro os campos que receberão dados

insert into clientes (nomeCliente, sexoCliente, ufNascimento, dataNascimento)
			value
            (
            "Carla Cristina",
            "m",
            "sp",
            "1996-01-19"
            );

#Insert posicional, na posicao de criação da tabela
#Os campos que forem auto incrementados e não obrigatórios
#Terão que ser declarados como null
insert into clientes values
					(
					null,
                    "Cristina C",
                    "f",
                    "sp",
                    "2000-10-01"
					);

insert into clientes (nomeCliente, sexoCliente) values
("Victor", "m"),("Tereza", "f");
select * from clientes;
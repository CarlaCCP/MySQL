create table funcionarios1 (
	
    id int not null auto_increment,
    nome varchar(30) not null,
    nascimento date,
    sexo enum ('M', 'F'),
	peso decimal (5,2),
    altura decimal (3,2),
	nacionalidade varchar (20) default 'Brasil',
    primary key (id)
) engine = innodb; #permite voltar atras nas operações

insert into funcionarios1 values
(default , 'alex tenorio da silva', '2018-02-03', 'M', '68.5', '2.05', default);
select * from funcionarios1;

insert into funcionarios1 (nome, nascimento, sexo, peso ,altura)
	values ('Gabriela', '1998-02-03', 'F', '58.5', 1.60),
			('João', '1998-02-04', 'M', '68.5', 1.80),
			('Marcio', '1998-02-03', 'M', '69.5', 1.70);
select * from funcionarios1;
select * from funcionarios1 where peso > 67; #where é uma clausula
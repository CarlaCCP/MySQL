create database relacionamentos;
use relacionamentos;

create table funcionarios 
(
		fun_id int auto_increment,
		fun_nome varchar(100) not null,
        fun_sexo enum('m','f') not null default 'f',
        fun_salario decimal(10,2),
        primary key(fun_id)
);

create table conjunge
(
	conj_id int auto_increment,
    conj_nome varchar(100),
    conj_nasc date,
    fun_id int not null, 
    
    primary key (conj_id),
    foreign key (fun_id) references funcionarios (fun_id),
    unique (fun_id)
);

drop table conjunge;
drop table funcionarios;
desc funcionarios;
desc conjunge;
select * from conjunge;

-- Inserindo informações

insert funcionarios values (null, "Itamar Assunção", "m", 2000.69);
insert funcionarios (fun_nome, fun_sexo) values ("Carla Cristina" , "f");

insert conjunge values (null, "Victor Saade", '1995-09-04', 1);
insert conjunge values (null, "Maria Ap", '1995-09-04', 2);

-- Outra forma 
create table conjunge
(
	fun_id int, -- dessa forma ele já será unico
    conj_nome varchar(100),
    conj_nasc date,

    
    primary key (fun_id),
    foreign key (fun_id) references funcionarios (fun_id),
    unique (fun_id)
);

insert conjunge values (1, "Victor Saade", '1995-09-04');
insert conjunge values (2, "Maria Ap", '1995-09-04');
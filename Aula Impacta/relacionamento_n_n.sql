use relacionamentos;
drop table cargos;
drop table funcionarios;

create table funcionarios (
	fun_id int auto_increment,
    fun_nome varchar(100) not null,
    fun_sexo enum ('m','f') not null default 'f',
    fun_salario decimal(10,2),
	
    primary key (fun_id)
    
	
);

insert funcionarios (fun_nome, fun_salario) values 
					("Carla", 2500.45),
                    ("Cristina", 2700.45),
                    ("Conceição", 3000.45),
                    ("Paula", 2500.45),
                    ("Victor", 5000.45),
                    ("Augusto", 2500.45),
					("Saade", 2500.45);

create table treinamentos (
	trei_id int auto_increment,
    trei_nome varchar(100) not null,
    
    primary key (trei_id) 

);

insert treinamentos (trei_nome) values 
								("Excell"),
                                ("Java"),
                                ("Spring"),
                                ("Angular");
-- Tabela de ligação

create table fun_trei (
		fun_id int,
        trei_id int,
        
        primary key (fun_id, trei_id),
        foreign key (fun_id) references funcionarios(fun_id),
        foreign key (trei_id) references treinamentos(trei_id)
);

insert into fun_trei values
					(1,2),
                    (3,4),
                    (5,1),
                    (6,3);
select * from funcionarios;
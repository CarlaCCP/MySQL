use cursos;
create table cursos(
	idCurso int not null,
    nomeCurso varchar(65) not null,
    cargaHoraria int unsigned, #não aceita números negativos
    dataInicio date,
    descricao text
);

show tables;
#Todos servem para descrever a tabela cursos
describe cursos;
explain cursos;
desc cursos;
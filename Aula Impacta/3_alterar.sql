use cursos;
show tables;
describe cursos;
desc cursosVerao;
create table cursosVerao like cursos;

alter table cursosVerao rename to cursosFerias;
alter table cursosFerias add column estacao varchar(20);
alter table cursosFerias add column teste varchar(20) after descricao;
alter table cursosFerias add column teste2 varchar(20) first;
alter table cursosFerias modify teste2 int(5) not null;
alter table cursosFerias change teste2 testando varchar(20) not null;

alter table cursosFerias drop column testando;
drop table cursosferias;
drop database cursos;
desc cursosFerias;
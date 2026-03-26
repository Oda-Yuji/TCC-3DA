/*NOME DATABASE PLACEHOLDER*/
create database tcc_ds

use tcc_ds

create table cursos (
id varchar(2) not null primary key,
nome_curso varchar(50) not null
);

insert into cursos values ("DS", "Desenvolvimento de Sistemas")

select * from cursos

create table anos (
id varchar(3) primary key,
nome_ano varchar(30)
);

insert into anos value ("PRI", "Primeiro ano")

select * from anos

create table alunos (
id int(6) primary key auto_increment,
nome_completo varchar(55) not null,
data_nascimento date not null,
cpf bigint(11),
ano varchar(3),
curso varchar(3),
constraint fk_curso_alunos
foreign key (curso) references cursos(id),
constraint fk_ano_alunos
foreign key (ano) references anos(id)
);

insert into alunos values (1 ,'Samuel Lirio Dayne', '2008-09-09', 12345678901, 'PRI', 'DS')

create table materias (
id varchar(3) primary key,
nome_materia varchar(30)
);

insert into materias values ('MAT', 'Matematica')

select * from materias

create table materias_cursos (
id varchar(3) primary key,
nome_materia varchar(30),
curso varchar(3),
constraint fk_curso_materias_curso
foreign key (curso) references cursos(id)
);

insert into materias_cursos value ('BC', 'Banco de Dados', 'DS')

select * from materias_cursos

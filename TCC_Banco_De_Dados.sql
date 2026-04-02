/*NOME DATABASE PLACEHOLDER*/
create database tcc_ds;

use tcc_ds;

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
classe varchar(3),
constraint fk_curso_alunos
foreign key (classe) references classes(id)
);

insert into alunos values (1 ,'Samuel Lirio Dayne', '2008-09-09', 12345678901, '1DA')

select * from alunos
desc alunos

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

create table periodos (
id varchar(3) primary key,
periodo varchar(30)
)

insert into periodos value ('AM', 'Periodo da Manha')

create table classes (
id varchar(3) primary key,
classe varchar(60),
curso varchar(2),
ano varchar(3),
periodo varchar(3),
constraint fk_cursos_classes
foreign key (curso) references cursos(id),
constraint fk_anos_classes
foreign key (ano) references anos(id),
constraint fk_periodos_classes
foreign key (periodo) references periodos(id)
)

insert into classes value ('1DA', 'Primeiro ano de Desenvolvimento de Sistemas da Manha', 'DS', 'PRI', 'AM')

select * from classes

create table professores (
id int(6) primary key auto_increment,
nome varchar(40),
numero_telefone bigint(12),
data_nascimento date,
materia varchar(3),
constraint fk_materia_professor
foreign key (materia) references materias(id)
)

insert into professores value (1 ,'Marcelo Mendez', 11910039435, '1983-11-02', 'MAT')

select * from professores

drop table professores
/*NOME DATABASE PLACEHOLDER*/
create database tcc_ds;

use tcc_ds;

create table course (
id varchar(2) not null primary key,
course_name varchar(50) not null
);

insert into course values ("DS", "Desenvolvimento de Sistemas");

select * from course;

create table grade (
id varchar(3) primary key,
name_grade varchar(30)
);

insert into grade value ("PRI", "Primeiro ano");

select * from grade;

create table students (
id int(6) primary key auto_increment,
full_name varchar(55) not null,
birth_date date not null,
cpf bigint(11),
classe varchar(3),
constraint fk_curso_alunos
foreign key (classe) references classes(id)
);

insert into students values (1 ,'Samuel Lirio Dayne', '2008-09-09', 12345678901, '1DA');

select * from alunos;
desc alunos;

create table school_subjects (
id varchar(3) primary key,
subject_name varchar(30)
);

insert into school_subjects values ('MAT', 'Matematica');

select * from school_subjects;

create table course_subjects (
id varchar(3) primary key,
nome_materia varchar(30),
curso varchar(3),
constraint fk_curso_materias_curso
foreign key (curso) references cursos(id)
);

insert into course_subjects value ('BC', 'Banco de Dados', 'DS');

select * from course_subjects;

create table school_shift (
id varchar(3) primary key,
shift varchar(30)
);

insert into school_shift value ('AM', 'Periodo da Manha');

create table class (
id varchar(3) primary key,
class varchar(60),
course varchar(2),
grade varchar(3),
shift varchar(3),
constraint fk_course_class
foreign key (course) references course(id),
constraint fk_grade_class
foreign key (grade) references grade(id),
constraint fk_shift_class
foreign key (shift) references shift(id)
);

insert into class value ('1DA', 'Primeiro ano de Desenvolvimento de Sistemas da Manha', 'DS', 'PRI', 'AM');

select * from class;

create table professores (
id int(6) primary key auto_increment,
nome varchar(40),
numero_telefone bigint(12),
data_nascimento date,
materia varchar(3),
constraint fk_materia_professor
foreign key (materia) references materias(id)
);

insert into professores value (1 ,'Marcelo Mendez', 11910039435, '1983-11-02', 'MAT');

select * from professores;


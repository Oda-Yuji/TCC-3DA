CREATE DATABASE tcc_ds;

USE tcc_ds;

CREATE TABLE course (
    id VARCHAR(2) NOT NULL PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL
);

INSERT INTO course VALUES 
('DS', 'Desenvolvimento de Sistemas');

SELECT * FROM course;

CREATE TABLE grade (
    id VARCHAR(3) PRIMARY KEY,
    name_grade VARCHAR(30)
);

INSERT INTO grade VALUES 
('PRI', 'Primeiro ano');

SELECT * FROM grade;

CREATE TABLE school_subjects (
    id VARCHAR(3) PRIMARY KEY,
    subject_name VARCHAR(30)
);

INSERT INTO school_subjects VALUES 
('MAT', 'Matematica');

SELECT * FROM school_subjects;

CREATE TABLE school_shift (
    id VARCHAR(3) PRIMARY KEY,
    shift VARCHAR(30)
);

INSERT INTO school_shift VALUES 
('AM', 'Periodo da Manha');

SELECT * FROM school_shift;

CREATE TABLE class (
    id VARCHAR(3) PRIMARY KEY,
    class_name VARCHAR(60),
    course VARCHAR(2),
    grade VARCHAR(3),
    shift VARCHAR(3),

    CONSTRAINT fk_course_class
        FOREIGN KEY (course) REFERENCES course(id),

    CONSTRAINT fk_grade_class
        FOREIGN KEY (grade) REFERENCES grade(id),

    CONSTRAINT fk_shift_class
        FOREIGN KEY (shift) REFERENCES school_shift(id)
);

INSERT INTO class VALUES 
(
    '1DA',
    'Primeiro ano de Desenvolvimento de Sistemas da Manha',
    'DS',
    'PRI',
    'AM'
);

SELECT * FROM class;

CREATE TABLE students (
    id INT(6) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(55) NOT NULL,
    birth_date DATE NOT NULL,
    cpf BIGINT,
    class VARCHAR(3),

    CONSTRAINT fk_class_students
        FOREIGN KEY (class) REFERENCES class(id)
);

INSERT INTO students 
(name, birth_date, cpf, class)
VALUES
('Samuel Lirio Dayne', '2008-09-09', 12345678901, '1DA');

SELECT * FROM students;

DESC students;

CREATE TABLE course_subjects (
    id VARCHAR(3) PRIMARY KEY,
    name_subject VARCHAR(30),
    course VARCHAR(2),

    CONSTRAINT fk_course_subjects_course
        FOREIGN KEY (course) REFERENCES course(id)
);

INSERT INTO course_subjects VALUES 
('BD', 'Banco de Dados', 'DS');

SELECT * FROM course_subjects;

CREATE TABLE teachers (
    id INT(6) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40),
    phone_number BIGINT,
    birth_date DATE,
    subject VARCHAR(3),

    CONSTRAINT fk_subject_teacher
        FOREIGN KEY (subject) REFERENCES school_subjects(id)
);

INSERT INTO teachers
(name, phone_number, birth_date, subject)
VALUES
('Marcelo Mendez', 11910039435, '1983-11-02', 'MAT');

SELECT * FROM teachers;

CREATE TABLE teachers_course (
    id INT(6) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40),
    phone_number BIGINT,
    birth_date DATE,
    subject_course VARCHAR(2),

    CONSTRAINT fk_course_teacher
        FOREIGN KEY (subject_course) REFERENCES course_subjects(id)
);

INSERT INTO teachers_course
(name, phone_number, birth_date, subject_course)
VALUES
('Marcelo Mendez', 11910039435, '1983-11-02', 'BD');

SELECT * FROM teachers_course;

/*
-- ADD academy from TABLE
INSERT INTO academy (name, cnpj)
VALUES ('Santa Monica', '123454321')

INSERT INTO academy (name, cnpj)
VALUES ('Anhembi', '2545262211')

SELECT * FROM academy


-- ADD visitors from TABLE
INSERT INTO visitor (name, cpf, cnpj_academy_fk)
VALUES ('Claudio', '12321', '123454321')

INSERT INTO visitor (name, cpf, cnpj_academy_fk)
VALUES ('Selton', '643684378', '123454321')

INSERT INTO visitor (name, cpf, cnpj_academy_fk)
VALUES ('Suzana', '5343642353', '2545262211')

INSERT INTO visitor (name, cpf, cnpj_academy_fk)
VALUES ('Alex', '153578525', '2545262211')

SELECT * FROM visitor


-- ADD teachers from TABLE
INSERT INTO teacher (name, cpf, wage, cnpj_academy_fk)
VALUES ('Rodolfo', '6743577535', 4000, '123454321')

INSERT INTO teacher (name, cpf, wage, cnpj_academy_fk)
VALUES ('Jessé', '1785589765', 6000, '123454321')

INSERT INTO teacher (name, cpf, wage, cnpj_academy_fk)
VALUES ('Silverio', '63362526256', 6000, '123454321')

INSERT INTO teacher (name, cpf, wage, cnpj_academy_fk)
VALUES ('Cleber', '1656353667', 7000, '2545262211')

INSERT INTO teacher (name, cpf, wage, cnpj_academy_fk)
VALUES ('Vanessa', '2536764344', 7000, '2545262211')


SELECT * FROM teacher


-- ADD students from TABLE
INSERT INTO student(name, cpf, grades, cnpj_academy_fk)
VALUES('Clara', '187645785', 100, '123454321')

INSERT INTO student(name, cpf, grades, cnpj_academy_fk)
VALUES('Enzo', '163453256', 80, '123454321')

INSERT INTO student(name, cpf, grades, cnpj_academy_fk)
VALUES('Tiago', '185674326', 60, '2545262211')

INSERT INTO student(name, cpf, grades, cnpj_academy_fk)
VALUES('Giovanna', '43345627', 90, '2545262211')

SELECT * FROM student

-- ADD notations from TABLE
INSERT INTO notation (description, student_cpf_fk)
VALUES ('A Minha nota ta muito boa!', '187645785')

INSERT INTO notation (description, student_cpf_fk)
VALUES ('A Minha nota ta acima da media!', '163453256')

INSERT INTO notation (description, student_cpf_fk)
VALUES ('A Minha nota ta abaixo da media!', '185674326')

INSERT INTO notation (description, student_cpf_fk)
VALUES ('A Minha nota ta quase perfeita!', '43345627')

SELECT * FROM notation

-- ADD student_teacher from TABLE
INSERT INTO student_teacher (cpf_student_fk, cpf_teacher_fk)
VALUES ('187645785', '6743577535')

INSERT INTO student_teacher (cpf_student_fk, cpf_teacher_fk)
VALUES ('163453256', '6743577535')

INSERT INTO student_teacher (cpf_student_fk, cpf_teacher_fk)
VALUES ('185674326', '2536764344')

INSERT INTO student_teacher (cpf_student_fk, cpf_teacher_fk)
VALUES ('43345627', '2536764344')

SELECT * FROM student_teacher
*/

SELECT * FROM academy acad INNER JOIN teacher t ON acad.cnpj = t.cnpj_academy_fk;

SELECT * FROM student INNER JOIN notation ON student.cpf = notation.student_cpf_fk;
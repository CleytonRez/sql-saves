CREATE TABLE academy (
	name varchar(255),
	cnpj varchar(100),
	PRIMARY KEY (cnpj)
);

CREATE TABLE visitor(
	cpf varchar(255) NOT NULL,
	name varchar(255),
	cnpj_academy_fk varchar NOT NULL,
	PRIMARY KEY (cpf),
	FOREIGN KEY (cnpj_academy_fk) REFERENCES academy(cnpj)

);
CREATE TABLE teacher(
	cpf varchar(255) NOT NULL,
	name varchar(255),
	wage double precision,
	cnpj_academy_fk varchar NOT NULL,
	PRIMARY KEY(cpf),
	FOREIGN KEY(cnpj_academy_fk) REFERENCES academy(cnpj)

);
CREATE TABLE student(
	cpf varchar(255) NOT NULL,
	name varchar(255),
	grades double precision,
	cnpj_academy_fk varchar NOT NULL,
	PRIMARY KEY (cpf),
	FOREIGN KEY (cnpj_academy_fk) REFERENCES academy(cnpj)

);

CREATE TABLE notation(
	description text,
	student_cpf_fk varchar(255) NOT NULL,
	PRIMARY KEY(student_cpf_fk),
	FOREIGN KEY (student_cpf_fk) REFERENCES student(cpf)
	
);

-- SERIAL auto Increement ID.
CREATE TABLE student_teacher(
	cpf_student_fk varchar(255) NOT NULL,
	cpf_teacher_fk varchar(255) NOT NULL,
	id serial,
	PRIMARY KEY(id),
	FOREIGN KEY(cpf_student_fk) REFERENCES student(cpf),
	FOREIGN KEY(cpf_teacher_fk) REFERENCES teacher(cpf)
);
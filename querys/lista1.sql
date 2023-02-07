CREATE TABLE cursos(
	id INT NOT NULL IDENTITY(1,1),
	nome varchar(30) NOT NULL,
	mensalidade INT,
	PRIMARY KEY(id)
);

CREATE TABLE alunos(
	nome VARCHAR(255) NOT NULL,
	cpf CHAR(11) NOT NULL,
	email VARCHAR (80) NOT NULL,
	data_nascimento DATE NOT NULL,
	endereco VARCHAR(255),
	complemento VARCHAR(20),
	PRIMARY KEY(cpf)
);

CREATE TABLE matriculas(
	id INT NOT NULL IDENTITY(1,1),
	id_curso INT,
	id_aluno INT,
	numero_matricula VARCHAR(40) NOT NULL,
	PRIMARY KEY(id)
);

INSERT INTO cursos (nome, mensalidade) VALUES 
('engenharia de software', 500),
('engenharia civil', 600),
('arquitetura', 600),
('design grafico', 600),
('medicina', 1500);

SELECT * FROM cursos
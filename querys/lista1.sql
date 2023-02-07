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

INSERT INTO alunos(nome, cpf, email, data_nascimento, endereco, complemento) VALUES
('guilherme', 'guilherme@email.com', '03-03-2002', '', 'casa'),
('fernando', 'fernando@email.com', '02-05-2004', 'rua nordestina', 'apartamento'),
('agatha', 'agatha@email.com', '01-04-2000', 'rua 1', ''),
('nicolly', 'nicolly@email.com', '02-02-2005', 'rua 22', 'apartamento'),
('matheus', 'matheus@email.com', '01-05-2005', 'rua 21', 'casa'),
('vitor', 'vitor@email.com', '03-01-1990', 'rua 90', 'apartamento'),
('gustavo', 'gustavo@email.com', '31-12-1999', 'rua 34', 'casa'),
('geovana', 'geovana@email.com', '29-02-2003', 'rua 112', 'casa'),
('julia', 'julia@email.com', '22-02-2002', 'rua 205', 'casa'),
('giovani', 'giovani@email.com', '26-012-1980', 'rua 12', 'casa'),
('felipe', 'felipe@email.com', '10-12-1998', 'rua 4', 'apartamento');
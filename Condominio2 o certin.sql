USE Condominio2;

CREATE TABLE Condominio (
	id INT,
	nome VARCHAR(50),
	CNPJ INT NOT NULL,
	emp_resp VARCHAR(50) NOT NULL
	PRIMARY KEY(id)
);

CREATE TABLE gastos (
	id INT,
	descricao VARCHAR(120) NOT NULL,
	data DATE NOT NULL,
	condominio INT NOT NULL
	PRIMARY KEY(id)
);

ALTER TABLE gastos ADD 
FOREIGN KEY (condominio) references Condominio(id)

CREATE TABLE blocos (
	id INT,
	nome VARCHAR(50) NOT NULL,
	condominio INT NOT NULL
	PRIMARY KEY(id)
);

ALTER TABLE blocos ADD
FOREIGN KEY (condominio) references Condominio(id)

CREATE TABLE funcionarios (
	id INT,
	nome VARCHAR(50) NOT NULL,
	cpf INT NOT NULL,
	salario FLOAT NOT NULL,
	telefone INT
	PRIMARY KEY(id)
);

CREATE TABLE apartamento (
	id INT,
	andar INT NOT NULL,
	numero INT NOT NULL,
	bloco INT NOT NULL
	PRIMARY KEY(id)
);

ALTER TABLE apartamento ADD
FOREIGN KEY (bloco) references blocos(id)

CREATE TABLE morador (
	id INT,
	nome VARCHAR(50) NOT NULL,
	cpf INT NOT NULL,
	email VARCHAR(50),
	telefone INT
	PRIMARY KEY (id)
);

CREATE TABLE visitas (
	id INT,
	nome VARCHAR(50) NOT NULL,
	cpf INT,
	entrada DATETIME NOT NULL,
	saida DATETIME NOT NULL
	PRIMARY KEY(id)
);

CREATE TABLE areasLazer (
	id INT,
	nome VARCHAR(50) NOT NULL
	PRIMARY KEY (id)
);

CREATE TABLE quarto (
	id INT,
	nome VARCHAR(50),
	camas INT,
	apartamento INT NOT NULL
	PRIMARY KEY (id)
);

ALTER TABLE quarto ADD
FOREIGN KEY (apartamento) references apartamento(id)

CREATE TABLE recurso (
	id INT,
	nome VARCHAR(50) NOT NULL
	PRIMARY KEY(id)
);

CREATE TABLE funcionario_condominio(
	idF int,
	idC int
	PRIMARY KEY(idF, idC)
);

ALTER TABLE funcionario_condominio
ADD FOREIGN KEY(idF) REFERENCES funcionarios(id), FOREIGN KEY(idC) REFERENCES Condominio(id)

CREATE TABLE areaLazer_condominio(
	idAL int,
	idC int
	PRIMARY KEY(idAL, idC)
);

ALTER TABLE areaLazer_condominio
ADD FOREIGN KEY(idAL) REFERENCES areasLazer(id), FOREIGN KEY(idC) REFERENCES Condominio(id)

CREATE TABLE morador_apartamento(
	idM int,
	idA int
	PRIMARY KEY(idM, idA)
);

ALTER TABLE morador_apartamento
ADD FOREIGN KEY(idM) REFERENCES morador(id), FOREIGN KEY(idA) REFERENCES apartamento(id)

CREATE TABLE visita_apartamento(
	idV int,
	idA int
	PRIMARY KEY(idV, idA)
);

ALTER TABLE visita_apartamento
ADD FOREIGN KEY(idV) REFERENCES visitas(id), FOREIGN KEY(idA) REFERENCES apartamento(id)

CREATE TABLE recurso_quarto(
	idR int,
	idQ int
	PRIMARY KEY(idR, idQ)
);

ALTER TABLE recurso_quarto
ADD FOREIGN KEY(idR) REFERENCES recurso(id), FOREIGN KEY(idQ) REFERENCES quarto(id)
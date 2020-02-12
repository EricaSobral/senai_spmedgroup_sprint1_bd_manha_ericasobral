CREATE DATABASE SP_MedGroup;

USE SP_MedGroup;

-- CRIANDO AS TABELAS

CREATE TABLE Tipo_usuario (
id_tipo_usuario INT PRIMARY KEY IDENTITY, 
Usuario VARCHAR (500) NOT NULL UNIQUE
);


CREATE TABLE Cidades (
id_cidade INT PRIMARY KEY IDENTITY,
Cidade VARCHAR (500)
);

CREATE TABLE Estados (
id_estado INT PRIMARY KEY IDENTITY,
Estado VARCHAR(500)
);

CREATE TABLE Especialidades (
id_especialidade INT PRIMARY KEY IDENTITY,
Especialidade VARCHAR(500)
);

CREATE TABLE Generos (
id_genero INT PRIMARY KEY IDENTITY,
Genero VARCHAR (500) NOT NULL UNIQUE
);

CREATE TABLE Status_Consulta(
id_status_consulta INT PRIMARY KEY IDENTITY,
Situacao VARCHAR (500) NOT NULL UNIQUE
);

CREATE TABLE Usuario (
id_usuario INT PRIMARY KEY IDENTITY,
email VARCHAR (500) NOT NULL UNIQUE,
senha VARCHAR (50) NOT NULL,
fk_tipo_usuario INT FOREIGN KEY REFERENCES Tipo_Usuario (id_tipo_usuario)
);

CREATE TABLE Endereco (
id_endereco INT PRIMARY KEY IDENTITY,
Logradouro VARCHAR (500) NOT NULL UNIQUE,
Numero INT NOT NULL UNIQUE,
Complemento VARCHAR (500),
Bairro VARCHAR (500),
CEP VARCHAR (50),
fk_cidade INT FOREIGN KEY REFERENCES Cidades (id_cidade),
fk_estado INT FOREIGN KEY REFERENCES Estados (id_estado)
);
-- DML
CREATE TABLE Clinica (
id_clinica INT PRIMARY KEY IDENTITY,
Nome_clinica VARCHAR (500),
CNPJ VARCHAR (50) NOT NULL UNIQUE,
Telefone VARCHAR (50) NOT NULL UNIQUE,
fk_edenreco INT FOREIGN KEY REFERENCES Endereco (id_endereco)
);


CREATE TABLE Administrador (
id_administrador INT PRIMARY KEY IDENTITY,
Nome_administrador VARCHAR (250) NOT NULL,
CPF CHAR (11) NOT NULL UNIQUE,
Telefone VARCHAR (100) NOT NULL UNIQUE,
fk_usuario INT FOREIGN KEY REFERENCES Usuario (id_usuario),
fk_clinica INT FOREIGN KEY REFERENCES Clinica (id_clinica)
);

CREATE TABLE Medicos (
id_medico INT PRIMARY KEY IDENTITY,
Nome_medico VARCHAR (250) NOT NULL,
CRM  CHAR (8) NOT NULL UNIQUE,
Telefone VARCHAR (50) NOT NULL UNIQUE,
fk_usuario INT FOREIGN KEY REFERENCES Usuario (id_usuario),
fk_especialidade INT FOREIGN KEY REFERENCES Especialidades (id_especialidade)
);



CREATE TABLE Prontuario_Paciente(
id_paciente INT PRIMARY KEY IDENTITY,
Nome_paciente VARCHAR (250) NOT NULL,
CPF CHAR (11) NOT NULL UNIQUE,
RG CHAR (9) NOT NULL UNIQUE,
Data_nascimento DATE NOT NULL,
Telefone VARCHAR (100) NOT NULL UNIQUE,
fk_endereco INT FOREIGN KEY REFERENCES Endereco (id_endereco),
fk_genero INT FOREIGN KEY REFERENCES Generos (id_genero),
fk_usario INT FOREIGN KEY REFERENCES Usuario (id_usuario),
);

A

CREATE TABLE Consultas  (
id_consulta INT PRIMARY KEY IDENTITY,
Data_Hora DATETIME2 NOT NULL,
Descricao VARCHAR(600),
fk_paciente INT FOREIGN KEY REFERENCES Prontuario_Paciente (id_paciente),
fk_clinica INT FOREIGN KEY REFERENCES Clinica (id_clinica),
fk_medico INT FOREIGN KEY REFERENCES Medicos (id_medico),
fk_status_consulta INT FOREIGN KEY REFERENCES Status_Consulta (id_status_consulta)
);

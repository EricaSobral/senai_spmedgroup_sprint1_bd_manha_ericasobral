-- DML

INSERT INTO Tipo_usuario (usuario)
VALUES ('Administrador'), ('Medico'), ('Paciente');

INSERT INTO Cidades (Cidade)
VALUES ('São Paulo'), ('São Caetano'), ('Itapecerica da Serra');

INSERT INTO Estados (Estado)
VALUES('São Paulo'), ('Rio de Janeiro');

INSERT INTO Especialidades(Especialidade)
VALUES ('Pediatra'), ('Ginecologista'), ('Clinico Geral'), ('Ortopedista'), ('Dermatologista');

INSERT INTO Generos (Genero)
VALUES ('Feminino'), ('Masculino'), ('Agenero'), ('Outros');

INSERT INTO Status_Consulta (Situacao)
VALUES ('Confirmado'), ('Cancelado'), ('Realizado');

INSERT INTO Usuario (email, senha, fk_tipo_usuario)
VALUES ('valnei@adm.com', 'adm132', 1),
       ('maia@medgroup.com', 'maia123', 2),
	   ('gabriel@medgroup.com', 'gabi123',2),
	   ('jose@medgroup.com', 'jose123',2),
	   ('vania@medgroup.com', 'vania123',2),
	   ('vivian@medgroup.com', 'vivi123',2),
	   ( 'fatima@email.com', 'yui788',3),
	   ('maria@email.com','ma123',3),
	   ('alexandre@email.com', 'alex21',3),
	   ('ines@email.com', 'ines1504',3);

INSERT INTO Endereco (Logradouro, Numero, Complemento, Bairro, CEP, fk_cidade, fk_estado)
VALUES ('Rua Silva Bueno', 1234, '', 'Ipiranga', '04245-105', 1, 1),
       ('Rua Visconde de Pirajá', 234,'', 'Sacomã', '04246-125', 1,1),
       ('Rua Paes Leme', 652, 'ap 235', 'Pinheiros', '04798-105', 1, 1),
       ('Av. Rebouças', 1936, 'ap 815', 'Consolação', '04985-157', 1, 1),	 
       ('Rua Maria Antonia', 856, 'ap 518', 'Vila Buarque', '05045-250', 1, 1);

INSERT INTO Clinica (Nome_clinica, CNPJ, Telefone, fk_edenreco) 
VALUES ('SPMedGroup', '12654785214587', '11 2068-4721', 1);

INSERT INTO Administrador (Nome_administrador, CPF, Telefone, fk_usuario, fk_clinica)
VALUES ('Valnei Santos', '45889622365', '11 945879425', 1, 1);

INSERT INTO Medicos (Nome_medico, CRM,Telefone, fk_usuario, fk_especialidade)
VALUES ('Maia Oliveira', '66438', '11 987851238', 2 ,4),
       ('Gabriel Dantas', '78985',  '11 987851456', 3, 1),
       ('José Henrique', '48759', '11 978541238', 4, 3),
       ('Vania Dias', '85689','11 998791245', 5, 2),
       ('Vivian Veloso', '57886',  '15 935275123', 6, 5);

	   
INSERT INTO Prontuario_Paciente (Nome_paciente, CPF, RG, Data_nascimento, Telefone, fk_endereco, fk_genero, fk_usuario)
VALUES ('Valentina Nascimento', '14785236974', '123465830', '30-8-2007','978953420', 2, 1,7),
       ('Maria Andrade', '36985214789', '478767652',  '16-08-1998','11 987569885',3,1,8),
       ('Alexandre Castanhare', '25874136985', '232124124', '21-01-1974', '9958762545',4,2,9 ),
       ('Ines Dantas', '12547856321', '235487952',  '15-04-1985', '20684755', 5,1,10);

INSERT INTO Consultas (Data_Hora,fk_paciente, Descricao,fk_clinica, fk_medico, fk_status_consulta)
VALUES ('15-01-2020 15:00', 1, 'Paciente apresenta sintomas de catapora. Foi pedido alguns exames.', 1, 2,3),
       ('10-02-2020 18:00', 2, 'Paciente deveria trazer resultados de exame mas não compareceu na consulta.', 1, 1, 2),
       ('22-02-2020 17:00', 3, '', 1,3,1),
       ('15-02-2020 13:00', 4, 'Paciente realizou procedimento estético - preenchimento labial.', 1,5,3);


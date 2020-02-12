 -- DQL

 -- Quantidade de Usuarios
 SELECT COUNT (id_usuario) as Total_Usuario FROM Usuario

 --  Medico e sua especialidade

CREATE PROCEDURE Numero
@Quantidade INT 
AS
SELECT Especialidades.Especialidade, Medicos.Nome_medico FROM Medicos
INNER JOIN Especialidades ON Especialidades.id_especialidade = Medicos.fk_especialidade
WHERE id_medico = @Quantidade;

EXECUTE Numero 1;

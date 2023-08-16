-- PROJETO HEALTH CLINIC -- DML

USE Health_Clinic_Lucas_Manha


INSERT INTO Clinica(NomeFantasia,Endereco,Telefone)
VALUES
(
'Serfis','R. Tercílio Tamagnini, 51 - Matriz, Mauá - SP','11 4547 2005'
)

INSERT INTO Prontuario(DescricaoExame)
VALUES
('Descrição do exame físico geral Normal: 
– NORMAL: paciente BEG (bom estado geral), vígil, orientado no tempo e espaço, ativo no leito, sem decúbito preferencial, fáceis atípica, normocorado, acianótico, anictérico, perfundido, hidratado, nutrido, sem linfonodomegalias, pulsos presentes e simétricos.

MMII (membros inferiores) – pulsos presentes e simétricos, perfundido, sem sinais de TVP e livre de edemas.'
)

INSERT INTO Usuario(Email,Senha)
VALUES
('Lin.email','0ff121'
)
('kyllian.email','kombat1'
)



INSERT INTO Paciente(NomePaciente,RG,CPF,IdUsuario,Endereco,DataNascimento)
VALUES
('Oswaldo','4768791','57398064209',2,'Dr.Vicente de Carvalho Bruno 567','2000-09-06'
)

INSERT INTO Especialidades(TituloEspecialidades)
VALUES('Ortopedista')

INSERT INTO Medico(NomeMedico,CRM,IdUsuario,IdEspecialiades,IdClinica,DataNascimentoMedico)
VALUES
('Lucio Machado','08085550370',1,1,1,'1997-04-01'
)

INSERT INTO Consultas(IdClinica,IdMedico,IdPaciente,DataConsulta,HoraConsulta,Situacao,IdProntuario)
VALUES
(1,1,1,'2023-08-22','10:30:00',1,1
)

INSERT INTO Comentario(IdConsulta,DescricaoComentario)
VALUES(1,'Agradeço a atenção, estou mais tranquilo e satisfeito com a consulta')


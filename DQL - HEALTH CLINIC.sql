-- PROJETO HEALTH CLINIC -- DQL


USE Health_Clinic_Lucas_Manha

 SELECT 
 Consultas.IdConsulta, 
 CONCAT ('Data:' ,Consultas.DataConsulta, '  Hora:',
 Consultas.HoraConsulta) AS  [Data e Hora],
 CASE WHEN Consultas.Situacao = 1 THEN 'Confirmada' ELSE 'Sem Confirmação' END AS [Presença],
 Clinica.NomeFantasia AS [Clínica],
 Paciente.NomePaciente AS [Paciente],
 Medico.NomeMedico AS [Doutor(a)],
 Especialidades.TituloEspecialidades AS [Especialidades],
 Medico.CRM,
 Prontuario.DescricaoExame AS [Prontuario],
Comentario.DescricaoComentario AS [FeedBack]

 FROM Consultas
       JOIN Clinica ON Consultas.IdClinica  = Clinica.IdClinica
	   JOIN Medico ON Medico.IdClinica = Consultas.IdClinica
	   JOIN Especialidades ON Medico.IdEspecialiades = Especialidades.IdEspecialidades
	   JOIN Paciente ON Consultas.IdPaciente = Paciente.IdPaciente
	   JOIN Prontuario ON Consultas.IdProntuario = Prontuario.IdProntuario
       LEFT JOIN Comentario ON Comentario.IdConsulta   = Consultas.IdConsulta



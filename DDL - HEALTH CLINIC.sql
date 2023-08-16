-- PROJETO HEALTH CLINIC -- DDL


CREATE DATABASE Health_Clinic_Lucas_Manha


USE Health_Clinic_Lucas_Manha

CREATE TABLE Clinica
(
IdClinica INT PRIMARY KEY IDENTITY,
NomeFantasia VARCHAR(30),
Endereco VARCHAR(100),
Telefone VARCHAR(13)
)

CREATE TABLE Prontuario
(IdProntuario INT PRIMARY KEY IDENTITY,
DescricaoExame TEXT
)
 

CREATE TABLE TipoDeUsuario
(IdTipoDeUsuario INT PRIMARY KEY IDENTITY,
TituloTipo VARCHAR(100),
)


CREATE TABLE Especialidades
(IdEspecialidades INT PRIMARY KEY IDENTITY,
TituloEspecialidades VARCHAR(100)
)   


CREATE TABLE Usuario
(IdUsuario INT PRIMARY KEY IDENTITY,
IdTipoDeUsuario INT FOREIGN KEY REFERENCES TipoDeUsuario(IdTipoDeUsuario),
Email VARCHAR(256) NOT NULL UNIQUE,
Senha VARCHAR(256) NOT NULL
)  


CREATE TABLE Paciente
(IdPaciente INT PRIMARY KEY IDENTITY,
IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario),
NomePaciente VARCHAR(100),
DataNascimento DATE,
RG VARCHAR(7) NOT NULL UNIQUE,
CPF VARCHAR(11) NOT NULL UNIQUE,
Endereco VARCHAR(256) 
)

CREATE TABLE Medico 
(IdMedico INT PRIMARY KEY IDENTITY,
IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario),
IdEspecialiades INT FOREIGN KEY REFERENCES Especialidades(IdEspecialidades),
IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica),
NomeMedico VARCHAR(256),
CRM VARCHAR(11) NOT NULL UNIQUE,
DataNascimentoMedico DATE
 )

 CREATE TABLE Administrador
 (IdAdministrador INT PRIMARY KEY IDENTITY,
 IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario),
 NomeAdm VARCHAR(100)
 )
 


 CREATE TABLE Consultas
 ( IdConsulta INT PRIMARY KEY IDENTITY,
 IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica),
 IdMedico INT FOREIGN KEY REFERENCES Medico(IdMedico),
 IdPaciente INT FOREIGN KEY REFERENCES Paciente(IdPaciente),
 IdProntuario INT FOREIGN KEY REFERENCES Prontuario(IdProntuario),
 DataConsulta DATE,
 HoraConsulta TIME,
 Situacao BIT
 )
  
CREATE TABLE Comentario
(IdComentario INT PRIMARY KEY IDENTITY,
IdConsulta INT FOREIGN KEY REFERENCES Consultas(IdConsulta),
DescricaoComentario TEXT)

Drop Table Comentario
        
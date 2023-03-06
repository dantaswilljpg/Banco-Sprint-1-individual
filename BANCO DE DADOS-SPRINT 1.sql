CREATE DATABASE cocoa;
USE cocoa;



-- TABELA USUARIO
CREATE TABLE Usuario (
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nomeUsuario VARCHAR(45),
    email VARCHAR(45), CONSTRAINT chkEmailUsuario CHECK (email LIKE '%@%'),
    senha VARCHAR(45),
    telCelular CHAR (11)
    );

-- TABELA EMPRESA
CREATE TABLE Empresa (
    idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
	CNPJ CHAR (14),
    nomeComercialEmpresa VARCHAR(50),
    responsavel VARCHAR(50),
    telfixo CHAR (8),
    Cidade VARCHAR (20),
    Estado VARCHAR (20),
    CEP CHAR(9),
    Numero INT,
    Complemento VARCHAR (45)
);

-- TABELA PERFIL(
create table Perfil(
idPerfil INT PRIMARY KEY AUTO_INCREMENT,
cargo VARCHAR(50),
nomeColaborador VARCHAR(50)
);

-- TABELA AUTONOMO
create table Autonomo(
idAutonomo INT PRIMARY KEY AUTO_INCREMENT,
cpf VARCHAR (11),
nome VARCHAR (40),
email VARCHAR (40),
senha VARCHAR (40)
);


-- TABELA SENSOR
CREATE TABLE Sensor (
	idSensor INT PRIMARY KEY AUTO_INCREMENT,
    statusSensor VARCHAR(45),
    CONSTRAINT chkStatus CHECK(statusSensor IN('Ativo', 'Inativo','Manutenção'))
);

-- TABELA LEITURA
CREATE TABLE Leitura(
	idLeitura INT PRIMARY KEY AUTO_INCREMENT,
	temperatura FLOAT,
    umidade FLOAT,
    dtHora DATETIME
);


-- INSERT TABELA USUARIO
INSERT INTO Usuario (nomeUsuario,email,senha,telCelular) VALUES
("Will dantas","WillDantas@gmail.com","DantasWill123",11960387699), 
("Vitor Quintas","VitorQuintass@gmail.com","QuintasVitor253",11936895627),
("Thais Moitinho","Thais_Moitinho@gmail.com","MoitinhoThais050",11945474698),
("Kauan De Queiroz","Kauan.Queiroz@gmail.com","QueirozKaun203",11974423412);

-- INSERT TABELA EMPRESA
INSERT INTO empresa (cnpj,nomeComercialEmpresa,responsavel,telfixo,cidade,estado,cep,Numero,Complemento) VALUES
(7201756800786,'Cocoa Solution','Samuel Silveira','25548705','São Paulo','SP',084603445,'156','Fazenda'), 
(04634178000258,'Previsons Cocoa','Marcelo Alcantara','26574123','São Paulo','SP',09654896,'157','Sitio'),
(26390076800756, 'Box liverycocoa','Leonardo Brito','25798750','Ubatuba','SP',09765345,'158','Fazenda'),
(73457287450256,'alert cocoa','João Silveira','25688945','Campinas','SP',07342864,'159','Sitio');


-- INSERT TABELA PERFIL
insert into Perfil(idPerfil,cargo,nomeColaborador) VALUES
(1,'CEO','Matheus Santana'),
(2,'Gerente','Thaylor Kawan'),
(3,'Diretor','Gustavo Garcia'),
(4,'Analista','Nelton Miguel');

SELECT * FROM Autonomo;
INSERT INTO Autonomo(idAutonomo,cpf,nome,email,senha) VALUES
(1,'27238354802','Vinicius Cruz','ViniciusCruzz@gmail.com','ViniCruz123'),
(2,'39650651810','Vitoria Bessane','VitoriaBessane@gmail.com','VihBessane123'),
(3,'57029871871','Pedro Frias','PedroFrias@gmail.com','PedroF123'),
(4,'57029871871','Cauan Gustavo','CauanGu@gmail.com','Cauangus123');

-- INSERT TABELA SENSOR
INSERT INTO Sensor(idSensor,statusSensor) VALUES
(1,'Ativo'),
(2,'Ativo'),
(3,'Manutenção'),
(4,'Inativo');

-- INSERT TABELA LEITURA
INSERT INTO  Leitura(idLeitura,temperatura,umidade,dtHora) VALUES
(1, '21.50', '50.5', '2023-03-01 12:30:00'),
(2, '22.15', '50.5', '2023-03-01 11:00:00'),
(3, '24.96', '50.5', '2023-03-02 16:30:00'),
(4, '25.13', '50.5', '2023-03-01 17:00:00');


select * from Usuario;
select * from Empresa;
select * from Perfil;
select * from Autonomo;
select * from Sensor;
select* from Leitura;



DROP DATABASE cocoa;
DROP TABLE Usuario;
DROP TABLE Empresa;
DROP TABLE Perfil;
DROP TABLE Autonomo;
DROP TABLE Sensor;
DROP TABLE Leitura;
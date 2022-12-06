create database sprintcacau;

use sprintcacau;

-- criando tabelas
CREATE TABLE CadastroEmpresa (
idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
sobrenome VARCHAR(45),
email VARCHAR(45),
CNPJ CHAR(14),
TelCel CHAR(11),
TelFixo CHAR(10)
);

alter table CadastroEmpresa rename column nome to nomeResponsavel;
alter table CadastroEmpresa rename column Sobrenome to sobrenomeResponsavel;
alter table CadastroEmpresa rename column TelCel to TelCelEmpresa;
alter table CadastroEmpresa rename column TelFixo to TelFixoEmpresa;
select * from CadastroEmpresa;

CREATE TABLE CadastroUsuario (
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(45),
Sobrenome VARCHAR(45),
emailUsuario VARCHAR(45),
CPF CHAR(11),
TelCel CHAR(11),
senha CHAR(8),
fkEmpresa INT,
FOREIGN KEY (fkEmpresa)
    REFERENCES CadastroEmpresa (idEmpresa)
);

alter table CadastroUsuario rename column nome to nomeUsuario;
alter table CadastroUsuario rename column Sobrenome to sobrenomeUsuario;
alter table CadastroUsuario rename column TelCel to TelCelUsuario;
alter table CadastroUsuario rename column senha to senhaUsuario;
select * from CadastroUsuario;

CREATE TABLE fazenda (
idfazenda INT PRIMARY KEY AUTO_INCREMENT,
cepFazenda CHAR(8),
nome VARCHAR(45),
numero VARCHAR(45),
responsavel VARCHAR(45),
telFazenda CHAR(10),
fkEmpresa INT,
FOREIGN KEY (fkEmpresa)
	REFERENCES CadastroEmpresa (idEmpresa)
);

alter table fazenda rename column nome to nomeFazenda;
alter table fazenda rename column responsavel to responsavelFazenda;
alter table fazenda rename column telFazenda to telFixoFazenda;
alter table fazenda rename column numero to numeroFazenda;
select * from fazenda;

CREATE TABLE Canteiro (
idCanteiro INT PRIMARY KEY AUTO_INCREMENT,
tipoCant VARCHAR(45),
fkFazenda INT ,
FOREIGN KEY (fkFazenda)
    REFERENCES fazenda (idfazenda)
) auto_increment = 10;

CREATE TABLE Sensor (
  idSensor INT PRIMARY KEY AUTO_INCREMENT,
  NomeSensor VARCHAR(45),
  fkCanteiro INT,
    FOREIGN KEY (fkCanteiro)
		REFERENCES Canteiro (idCanteiro)
) auto_increment = 100;

CREATE TABLE Captura (
IdDados INT PRIMARY KEY AUTO_INCREMENT,
Temp double,
dataDado DATETIME,
fkSensor INT,
    FOREIGN KEY (fkSensor)
		REFERENCES Sensor (idSensor)
);

-- Selects separados
select * from CadastroEmpresa;
select * from CadastroUsuario;
select * from fazenda;
Select * from canteiro;
Select * from Sensor;
select * from Captura;

-- inserindo dados nas tabelas
insert into CadastroEmpresa values
	(null, 'Alexandre', 'Costa','alexandre@email.com', 32143933000124, 11912345678, 1112345678);
    (null, 'Celso', 'Ricardo', 'Cacau Brasil', 'Celso@email.com', 15915785000108, 11988776655, 1122334455),
    (null, 'David', 'Kopenhagen', 'Kopenhagen', 'david@email.com', 61158283017750, 11977665544, 1133445566),
    (null, 'Rodolphe', 'Lindt', 'Lindt & Sprüngli', 'rodolphe@email.com', 20702154000132, 11966554433, 1144556677),
    (null, 'Henri', 'Nestlé', 'Nestlé', 'henri@email.com', 60409075000152, 11955443322, 1155667788);
 
 
insert into CadastroUsuario values
    (null, 'Roberto', 'Augusto', 'Cacau-Show', 'roberto@email.com', 20030040050, 11944556677, 12345678, 1),
    (null, 'Cláudio', 'Silva', 'Kopenhagen', 'claudio@email.com', 20030044450, 11944556679, 12345678, 3),
    (null, 'Maria', 'Bros', 'Nestlé', 'maria@email.com', 20033340050, 11944556675, 12345678, 5),
    (null, 'Cleo', 'Vasconcelos', 'Cacau Brasil', 'cleo@email.com', 82033340050, 11984579675, 12345678, 2),
    (null, 'Bruno', 'Hermida', 'Lindt & Sprüngli', 'bruno@email.com', 82033340050, 11984579675, 12345678, 4);
    
    
insert into fazenda values
	(null, 44911970, 'FZND-Cacau-show', 900, 'Roberto Augusto', 7712345678, 1),
	(null, 57430970, 'FZND-Cacau Brasil', 550, 'Cleo Vasconcelos', 822345678, 2),
    (null, 57331970, 'FZND-Kopenhagen', 420, 'Cláudio Silva', 672345678, 3),
    (null, 57440170, 'FZND-Lindt', 14, 'Bruno Hermida', 9134567890, 4),
    (null, 57530971, 'FZND-Nestlé',13, 'Maria Bros', 6223567846, 5);
    
    
-- inserindo canteiros da fazenda 1    
insert into Canteiro values
		(null,'SideA', 1),
	    (null,'SideB', 1),
		(null,'SideC', 1),
		(null,'SideD', 1),
		(null,'SideE', 1);
        
 -- inserindo canteiros da fazenda 2       
insert into Canteiro values
		(null,'SideA', 2),
	    (null,'SideB', 2),
		(null,'SideC', 2),
		(null,'SideD', 2),
		(null,'SideE', 2);
        
-- inserindo canteiros da fazenda 3
insert into Canteiro values
		(null,'SideA', 3),
	    (null,'SideB', 3),
		(null,'SideC', 3),
		(null,'SideD', 3),
		(null,'SideE', 3);
        
-- inserindo canteiros da fazenda 4       
insert into Canteiro values
		(null,'SideA', 4),
	    (null,'SideB', 4),
		(null,'SideC', 4),
		(null,'SideD', 4),
		(null,'SideE', 4);
        
-- inserindo canteiros da fazenda 5        
insert into Canteiro values
		(null,'SideA', 5),
	    (null,'SideB', 5),
		(null,'SideC', 5),
		(null,'SideD', 5),
		(null,'SideE', 5);        
        
-- inserindo sensor canteiro 1 side A
insert into Sensor values
	(null, 'azul', 10),
    (null, 'amarelo', 10),
    (null, 'vermelho', 10),
    (null, 'verde', 10),
    (null, 'roxo', 10);
    
    
-- inserindo sensor canteiro 1 side B
insert into Sensor values
	(null, 'azul', 11),
    (null, 'amarelo', 11),
    (null, 'vermelho', 11),
    (null, 'verde', 11),
    (null, 'roxo', 11);
    
-- inserindo sensor canteiro 1 side C  
  insert into sensor values  
	(null, 'azul', 12),
    (null, 'amarelo', 12),
    (null, 'vermelho', 12),
    (null, 'verde', 12),
    (null, 'roxo', 12);
    
-- inserindo sensor canteiro 1 side D 
insert into sensor values  
    (null, 'azul', 13),
    (null, 'amarelo', 13),
    (null, 'vermelho',13),
    (null, 'verde', 13),
    (null, 'roxo', 13);
    
-- inserindo sensor canteiro 1 side E
insert into sensor values  
    (null, 'azul', 14),
    (null, 'amarelo', 14),
    (null, 'vermelho', 14),
    (null, 'verde', 14),
    (null, 'roxo', 14);
    
    
--  inserindo dados dos sensores do canteiro 1 side a 
insert into Captura values 

(null, 23, '2022-10-15 18:00:59', 100),
(null, 24, '2022-10-15 18:00:59', 101),
(null, 22, '2022-10-15 18:00:59', 102),
(null, 21, '2022-10-15 18:00:59', 103),
(null, 23, '2022-10-15 18:00:59', 104);

-- inserindo dados dos sensores do canteiro 1 side b
insert into captura values

(null, 23, '2022-10-15 18:00:59', 105),
(null, 24, '2022-10-15 18:00:59', 106),
(null, 22, '2022-10-15 18:00:59', 107),
(null, 21, '2022-10-15 18:00:59', 108),
(null, 23, '2022-10-15 18:00:59', 109);

-- inserindo dados dos sensores do canteiro 1 side c
insert into captura values

(null, 23, '2022-10-15 18:00:59', 110),
(null, 24, '2022-10-15 18:00:59', 111),
(null, 22, '2022-10-15 18:00:59', 112),
(null, 21, '2022-10-15 18:00:59', 113),
(null, 23, '2022-10-15 18:00:59', 114);

-- inserindo dados dos sensores do canteiro 1 side d
insert into captura values

(null, 23, '2022-10-15 18:00:59', 115),
(null, 24, '2022-10-15 18:00:59', 116),
(null, 22, '2022-10-15 18:00:59', 117),
(null, 21, '2022-10-15 18:00:59', 118),
(null, 23, '2022-10-15 18:00:59', 119);

-- inserindo dados dos sensores do canteiro 1 side e
insert into captura values

(null, 23, '2022-10-15 18:00:59', 120),
(null, 24, '2022-10-15 18:00:59', 121),
(null, 22, '2022-10-15 18:00:59', 122),
(null, 21, '2022-10-15 18:00:59', 123),
(null, 23, '2022-10-15 18:00:59', 124);

        
-- Alguns selects com join
-- CadastroEmpresa + CadastroUsuario
Select * From CadastroEmpresa Join CadastroUsuario
	ON idEmpresa = fkEmpresa;	
    
-- CadastroEmpresa + Fazenda
Select * From CadastroEmpresa Join fazenda
	ON idEmpresa = fkEmpresa;
    
-- fazenda + canteiro 
Select * From fazenda Join canteiro
	ON idfazenda = fkfazenda;
    select * from fazenda;
    
-- canteiro + sensor
Select * From canteiro Join sensor
	ON idCanteiro = fkCanteiro;
    
-- sensor + captura
Select * From sensor Join captura
	ON idSensor = fkSensor;

-- CadastroEmpresa + CadastroUsuario onde o sobre usuario é igual a 'Hermida'
Select * from CadastroEmpresa as E join CadastroUsuario as U
	ON idEmpresa = fkEmpresa
		where sobrenomeUsuario = "Hermida";
    
-- select para mostrar o canteiro, sensor e captura dos dados    
select c.tipoCant as TipoCanteiro,
	   s.nomeSensor as NomeSensor,
	   d.temp as Temperatura,
       d.dataDado as DataHora
	    from Canteiro as c 
		  join Sensor as s 
			on idCanteiro = fkCanteiro
			 join Captura as d 
				on idSensor = fkSensor;

-- Select para mostrar o nome da empresa, dono da empresa, nome da fazenda, responsavel pela fazenda, canteiro da fazenda e sensor da fazenda, dados sensor
SELECT e.nomeEmpresa as NomeEmpresa,
	   e.nomeResponsavel as ResponsavelEmpresa, 
       f.nomeFazenda as NomeFazenda,
       f.ResponsavelFazenda as ResponsavelFazenda,
       c.tipoCant as Canteiro,
       s.nomeSensor as Sensor,
       d.temp as temperatura,
       d.dataDado as DataHora
		FROM CadastroEmpresa as e
			JOIN Fazenda as f
				ON e.idEmpresa = f.fkEmpresa
					left JOIN canteiro as c
						ON f.idFazenda = c.fkFazenda
							left JOIN sensor as s
								ON c.idCanteiro = s.fkCanteiro
									left JOIN captura as d 
										ON s.idSensor = d.fkSensor;

-- Order By
SELECT e.nomeEmpresa as NomeEmpresa,
	   e.nomeResponsavel as ResponsavelEmpresa,
       f.NomeFazenda as NomeFazenda,
       f.ResponsavelFazenda as ResponsavelFazenda,
       c.tipoCant as Canteiro,
       s.nomeSensor as Sensor
		FROM CadastroEmpresa as e
			JOIN Fazenda as f
				ON e.idEmpresa = f.fkEmpresa
					left JOIN canteiro as c
						ON f.idFazenda = c.fkFazenda
							left JOIN sensor as s
								ON c.idCanteiro = s.fkcanteiro
                                 order by NomeEmpresa; -- Desc
                                
-- Like
Select e.nomeEmpresa as NomeEmpresa,
	   f.nomeFazenda as NomeFazenda 
		from CadastroEmpresa as e 
			join fazenda as f 
				on idEmpresa = fkEmpresa 
					where e.nomeEmpresa like '%_u %';

-- Maior que
Select e.nomeEmpresa as NomeEmpresa,
		f.nomeFazenda as NomeFazenda 
			from CadastroEmpresa as e
				join fazenda as f 
					on idEmpresa = fkEmpresa 
						where e.idEmpresa > 3; -- (<) (<>)
                                
-- Select com concat
	 SELECT concat('A empresa ', e.nomeEmpresa, ' tem como responsável o(a) ', e.nomeResponsavel, e.sobrenomeResponsavel, '.', ' A fazenda ', 
     f.nomeFazenda, ' está sobre os cuidados do(a) ', f.ResponsavelFazenda) as Responsáveis from CadastroEmpresa as e join Fazenda as f on e.idEmpresa = f.fkEmpresa;
     
     
-- selects para auxílio
select * from CadastroEmpresa;
select * from CadastroUsuario;
select * from fazenda;
Select * from canteiro;
Select * from sensor;
Select * from captura;

     
-- alguns comandos DDL
/*Delete from Empresa where id = 5;
Desc Empresa;*/

-- Update
Update Fazenda set ResponsavelFazenda = 'Natasha Soares' where idFazenda = 2;
Update Empresa set NomeEmpresa = 'Cacau Show' where idEmpresa = 1;

create table aquario (
/* em nossa regra de negócio, um aquario tem apenas um sensor */
	id INT PRIMARY KEY AUTO_INCREMENT,
	descricao VARCHAR(300)
);

/* altere esta tabela de acordo com o que está em INSERT de sua API do arduino */

create table medida (
	id INT PRIMARY KEY AUTO_INCREMENT,
	dht11_umidade DECIMAL,
	dht11_temperatura DECIMAL,
	luminosidade DECIMAL,
	lm35_temperatura DECIMAL,
	chave TINYINT,
	momento DATETIME default current_timestamp,
	fk_aquario INT,
	FOREIGN KEY (fk_aquario) REFERENCES aquario(id)
);


-- fkUnidade int,
	-- foreign key (fkUnidade) references Unidade (idUnidade)

-- TABELA CORREDOR = independente da Unidade -> 1 unidade(loja) tem vários corredores e 1 corredor só esta em 1 unidade
create table Corredor (
idCorredor int primary key auto_increment,
Setor varchar (45),
NumeroCorredor int, check (NumeroCorredor > 0),
fkFazenda int,
foreign key (fkFazenda) references Fazenda (idFazenda)
); 

-- TABELA SENSOR = independente do corredor -> 1 corredor tem 1 ou + sensores e 1 sensor só esta em 1 unico corredor
create table Sensor (
idSensor int primary key auto_increment,
fkCorredor int,
foreign key (fkCorredor) references Corredor (idCorredor)
);

select * from sensor;

insert into sensor values
(null, "Rosa", null);

-- TABELA DADOS DO SENSOR = depende do Sensor -> 1 sensor tem vários dados e 1 dado só pertence a 1 único sensor
create table DadosSensor (
idDadosSensor int auto_increment,
sinal char (1),
check (sinal = 0 or sinal = 1),
dtHora datetime,
fkSensor int,
primary key (idDadosSensor,fkSensor),
foreign key (fkSensor) references Sensor (idSensor)
);

select * from DadosSensor;
select * from sensor;

insert into sensor values
(null, "Roxo",null);
insert DadosSensor values
(null, 1, '2021-01-01 20:00:00', 1);

alter table sensor auto_increment = 1;



insert into aquario values
    (null,'aquario1');
 insert into aquario values
    (null,'aquario2'); insert into aquario values
    (null,'aquario3'); insert into aquario values
    (null,'aquario4'); insert into aquario values
    (null,'aquario5');
    
    insert into medida (id, dht11_umidade, dht11_temperatura, luminosidade, lm35_temperatura, chave, fk_aquario) values
    (null, '72', '23','22','860','1', 1);
    
    
     insert into medida (id, dht11_umidade, dht11_temperatura, luminosidade, lm35_temperatura, chave, fk_aquario) values
    (null, '72', '23','22','860','1', 2),
    (null, '72', '23','22','860','1', 2),
    (null, '72', '23','22','860','1', 2),
    (null, '72', '23','22','860','1', 2),
    
    (null, '72', '23','22','860','1', 2);
    
     insert into medida (id, dht11_umidade, dht11_temperatura, luminosidade, lm35_temperatura, chave, fk_aquario) values
    (null, '72', '23','22','860','1', 2),
    (null, '72', '23','22','860','1', 2),
    (null, '72', '23','22','860','1', 2),
    (null, '72', '23','22','860','1', 2),
    
    (null, '72', '23','22','860','1', 2); 
   
    insert into medida (id, dht11_umidade, dht11_temperatura, luminosidade, lm35_temperatura, chave, fk_aquario) values
    (null, '72', '23','22','860','1', 3);
   
   
    insert into medida (id, dht11_umidade, dht11_temperatura, luminosidade, lm35_temperatura, chave, fk_aquario) values
    (null, '71', '22','23','850','0', 4),
    (null, '71', '22','23','850','0', 4),
    (null, '70', '22','23','870','0', 4),
    (null, '70', '22','23','870','0', 4),
    (null, '70', '23','23','850','0', 4),
    (null, '70', '23','23','850','0', 4),
    (null, '72', '23','23','850','0', 4),
    (null, '71', '23','23','850','0', 4),
    (null, '70', '22','22','860','1', 4),
    (null, '72', '22','22','860','1', 4),
    (null, '72', '22','22','870','0', 4),
    (null, '72', '22','23','870','0', 4),
    (null, '70', '23','23','860','0', 4),
    (null, '70', '23','23','860','1', 4),
    (null, '71', '23','23','860','1', 4);
    
    

Create Table Continente(
  		Pk_Cont Integer Not Null,
		Nome Varchar(25),
		Caracteristicas Varchar(200),
		Constraint Const_Pk_Cont Primary Key (Pk_Cont)
	);

	
	Create Table Pais(
		Pk_Pais Integer Not Null,
		Nome	Varchar(25) Not Null,
 		FK_Cont Integer Not Null,
     	Habitantes integer,
		Constraint Const_Pk_Pais Primary Key (Pk_Pais),
		Constraint Const_Fk_Cont Foreign Key (Fk_Cont) 	References Continente (Pk_Cont)
	);

	
	Create Table Estado(
		Pk_Est Integer Not Null,
		Nome	Varchar(25) Not Null,
		Regiao Varchar(25) Not Null,
		Fk_Pais Integer Not Null,
		Constraint Const_Pk_Est Primary Key (Pk_Est),
		Constraint Const_Fk_Pais Foreign Key (Fk_Pais) 	References Pais (Pk_Pais)
	);

	Create Table Cidade (
		Pk_Cid Integer Not Null,
		Fk_Est Integer Not Null,
		Populacao Integer Not Null,
		Nome	Varchar(25) Not Null,
		Constraint Const_Pk_Cid Primary Key (Pk_Cid),
		Constraint Const_Fk_Est Foreign Key (Fk_Est) 	References Estado (Pk_Est)
	);
	

INSERT INTO CONTINENTE (PK_CONT, CARACTERISTICAS, NOME) 
VALUES (1, 'A Am�rica do Sul abriga 12 pa�ses em desenvolvimento e uma popula��o total de 348 milh�es de habitantes, representando 6% da popula��o mundial', 'Am�rica do Sul');

INSERT INTO CONTINENTE (PK_CONT, CARACTERISTICAS, NOME) 
VALUES (2, 'Est�o localizados 3 pa�ses independentes (Estados Unidos, Canad� e M�xico), al�m das Bermudas (uma col�nia do Reino Unido), da Groenl�ndia (uma regi�o dinamarquesa), e Saint-Pierre et Miquelo', 'Am�rica do Norte');

INSERT INTO CONTINENTE (PK_CONT, CARACTERISTICAS, NOME) 
VALUES (3, 'A Am�rica Central ou Mesoam�rica � um istmo que faz a liga��o entre a Am�rica do Sul e a Am�rica do Norte. Nesta parte, abriga sete pa�ses e possui uma �rea com cerca de 540.000 km�', 'Am�rica Central');

INSERT INTO CONTINENTE (PK_CONT, CARACTERISTICAS, NOME) 
VALUES (4, 'A �frica � um continente de grandes contrastes. Foi nele que, segundo as evid�ncias cient�ficas de que dispomos hoje, surgiu a esp�cie humana. Sua popula��o, no ano 2000, beirava 800 milh�es', '�frica');


INSERT INTO PAIS (PK_PAIS, NOME, HABITANTES, FK_CONT) VALUES (1, 'Brasil', 5000000, 1);
INSERT INTO PAIS (PK_PAIS, NOME, HABITANTES, FK_CONT) VALUES (2, 'Argentina', 200000, 1);
INSERT INTO PAIS (PK_PAIS, NOME, HABITANTES, FK_CONT) VALUES (3, 'Uruguai', 300000, 1);
INSERT INTO PAIS (PK_PAIS, NOME, HABITANTES, FK_CONT) VALUES (4, 'Mexico', 1000000, 2);
INSERT INTO PAIS (PK_PAIS, NOME, HABITANTES, FK_CONT) VALUES (5, 'Gana', 400000, 4);

INSERT INTO ESTADO (PK_EST, NOME, REGIAO, FK_PAIS) VALUES (1, 'Santa Catarina', 'Sul', 1);
INSERT INTO ESTADO (PK_EST, NOME, REGIAO, FK_PAIS) VALUES (2, 'Parana', 'Sul', 1);
INSERT INTO ESTADO (PK_EST, NOME, REGIAO, FK_PAIS) VALUES (3, 'Bahia', 'Nordeste', 1);
INSERT INTO ESTADO (PK_EST, NOME, REGIAO, FK_PAIS) VALUES (4, 'Campo Grande', 'Centro Oeste', 1);
INSERT INTO ESTADO (PK_EST, NOME, REGIAO, FK_PAIS) VALUES (5, 'Amazonas', 'Norte', 1);
INSERT INTO ESTADO (PK_EST, NOME, REGIAO, FK_PAIS) VALUES (6, 'Buenos Aires', 'Sul', 2);
INSERT INTO ESTADO (PK_EST, NOME, REGIAO, FK_PAIS) VALUES (7, 'Tocantins', 'Norte', 1);



INSERT INTO CIDADE (PK_CID, FK_EST, POPULACAO, NOME) VALUES (1, 1, 400000, 'Joinville');
INSERT INTO CIDADE (PK_CID, FK_EST, POPULACAO, NOME) VALUES (2, 2, 70000, 'Pato Branco');
INSERT INTO CIDADE (PK_CID, FK_EST, POPULACAO, NOME) VALUES (3, 2, 50000, 'Francisco Beltrao');
INSERT INTO CIDADE (PK_CID, FK_EST, POPULACAO, NOME) VALUES (4, 2, 2000000, 'Curitiba');
INSERT INTO CIDADE (PK_CID, FK_EST, POPULACAO, NOME) VALUES (5, 3, 400000, 'Salvador');



select estado.nome, estado.regiao, pais.nome from estado, pais
where estado.fk_pais = pais.pk_pais and estado.nome = 'Parana'

select count(estado.pk_est), pais.nome
from estado, pais
where estado.fk_pais = pais.pk_pais
group by pais.nome


select count(estado.pk_est), pais.nome
from estado, pais
where estado.fk_pais = pais.pk_pais
group by pais.nome
having count(estado.pk_est) between 0 and 5


select count(estado.pk_est), estado.regiao, pais.nome
from estado, pais
where estado.fk_pais = pais.pk_pais
group by estado.regiao, pais.nome














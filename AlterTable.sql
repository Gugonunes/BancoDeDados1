/* Comandos de create table e alter table para prática*/

create table ALUNO(
RA CHAR(11),
NOME CHAR(200),
AnoIngr INT,
SemestreIngr CHAR(30)
)

create table CERVEJA(
COD INT,
ABV FLOAT,
IBU FLOAT,
TIPO VARCHAR,
DATA_FAB DATE
)


create table ONIBUS(
NUM INT,
ROTA CHAR(200),
PARTIDA TIMESTAMP,
CAPACIDADE INT
)

create table MEDICAO(
COD INT,
VALOR CHAR(200),
DATAHORA TIMESTAMP
)


create table Livro
(
PK_liv INT not null primary key,
TITULO VARCHAR(50),
NUM_PAG smallint,
ANO smallint
)

alter table livro 
ATT EDITORA VARCHAR(50),
add AUTOR VARCHAR(50) 


create table Livro2
(
TITULO VARCHAR(50),
NUM_PAG smallint,
ANO smallint
)

ALTER table Livro2
add PK_LIV INT not null primary key


create table Livro3
(
PK_LIV INT not null,
TITULO VARCHAR(50),
NUM_PAG smallint,
ANO smallint
)

ALTER table Livro3
add primary key (PK_LIV)

create table Livro4
(
PK_LIV INT,
TITULO VARCHAR(50),
NUM_PAG smallint,
ANO smallint
)
select * from Livro4

ALTER table Livro4
add primary key (PK_LIV)


alter table livro4 
alter ano
type VARCHAR(4)



create table fabricante(
	PK_fab		Integer not null Primary Key,
	Nome		Varchar(40) not null,
	Endereco	Varchar(40) not null,
	Telefone	Varchar(14) not null,
	CNPJ		char(17) not null);
	
create table produto(
	PK_prod	Integer not null Primary Key,
	Nome		Varchar(40) not null,
	Cor		Varchar(14) not null,
	Voltagem	Integer);

	
	
/* Agora implemente o relacionamento por chaves */

	alter table produto
			add FK_Fab Integer not null

	alter table produto
			add Foreign Key(FK_Fab) 
			REFERENCES 
			Fabricante (PK_Fab)



/* OU */		
    create table produto(
	PK_prod	Integer not null Primary Key,
	Nome		Varchar(40) not null,
	Cor		Varchar(14) not null,
	Voltagem	Integer,
 FK_Fab Integer not null,
 Foreign Key (Fk_Fab) 	References Fabricante (Pk_Fab)
 );

		
		
/* Agora insira dados */		
	

Insert INTO Fabricante (PK_Fab, Nome, Endereco, Telefone, CNPJ)
	Values(1, 'Brastemp', 'Av. Manaus', '0800-123765', '988.189.099/0001')

	commit 

Insert INTO Produto (PK_Prod, Nome, Cor, Voltagem, FK_Fab)
	Values(1, 'Fogao', 'BR', 110, 1)

	commit;
	
	
/* Erro!!! Pq? */

	
Insert INTO Fabricante (PK_Fab, Nome, Endereco, Telefone, CNPJ)
	Values(2, 'Brit�nia', 'Av. Anhanguera', '0800-456378', '999.189.212/0001')


Insert INTO Produto (PK_Prod, Nome, Cor, Voltagem, FK_Fab)
	Values(2, 'Cafeteira', 'BR', 220, 2)

commit

select *
from produto, fabricante







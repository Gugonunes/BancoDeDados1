/*Compile isso primeiro*/
drop table Cliente;
drop table Produto;
drop table Fabricante;
drop table NotaFiscal;
drop table Itens;


create table cliente(
	PK_cliente		Integer not null Primary Key,
	Nome		Varchar(40) not null,
	Endereco	Varchar(40) not null	
	);

create table fabricante(
	PK_fab		Integer not null Primary Key,
	Nome		Varchar(40) not null,
	Endereco	Varchar(40) not null,
	Telefone	Varchar(14) not null,
	CNPJ		char(17) not null
	);

	commit;
	
create table produto(
	PK_prod	Integer not null Primary Key,
	Nome		Varchar(40) not null,
	Cor		Varchar(14) not null,
	Voltagem	Integer,
	FK_Fab Integer not null,
	Foreign Key(FK_Fab) REFERENCES Fabricante (PK_Fab)
	);
	
create table NotaFiscal(
	PK_nota	Integer not null Primary Key,
	data date,
	ValorTotal numeric(8,2),
	FK_Cliente Integer not null,
	Foreign Key(FK_Cliente) REFERENCES Cliente (PK_cliente)
	);
	
create table Itens(
	Quantidade integer,
	Desconto numeric(6,2),
	ValorUnitario numeric(6,2),
	FK_Nota Integer not null,
	FK_Produto Integer not null,
	Foreign Key(FK_Nota) REFERENCES NotaFiscal (PK_nota),	
	Foreign Key(FK_Produto) REFERENCES Produto (PK_prod)
	);



 insert into cliente values (1,'Maria da Penha','Rua das Caetadas Noturnas');
 insert into cliente values (2,'Maria ta Prenha','Rua das Outras Caetadas Noturnas');
 insert into cliente values (3,'Louvores de los Libres','Av Ginete Bagual');
 insert into cliente values (4,'Jair Borracheiro','Alameda do m�');
 insert into cliente values (5,'Juraci Jurado de Jeric�','Boqeir�o do Tigre');
commit;

insert into fabricante values (1,'Toyota','Rua das aves de pena','14239878',2342642394);
insert into fabricante values (2,'Morgota','Rua facas','14239878',3523543);
insert into fabricante values (3,'Bergamota','Rua dos Bois com as Cordas','14239878',2365764745);
insert into fabricante values (4,'Jota','Rua J� Sinto Pena','14239878',12423645856);
insert into fabricante values (5,'Kokota','Visolino D4','14239878',697879564536);
insert into fabricante values (6,'Dakota','Rua das Ventanias','14239878',45746853568);
commit;

insert into produto values (1,'Amortece o pino','Preto',110,2);
insert into produto values (2,'Borracha de bicicleta','Preto',220,1);
insert into produto values (3,'Cord�o de veludo','Amarelo',110,2);
insert into produto values (4,'Piroca central traseira','Azul',110,4);
insert into produto values (5,'Jalapuxa de Bil�rio','Verde',220,4);
insert into produto values (6,'Larapemba de Jangada','Roxa',220,1);
commit;
 
insert into NotaFiscal values (1,'01/01/2017', 550,3);
insert into NotaFiscal values (2,'10/02/2017', 1324.00,2);
insert into NotaFiscal values (3,'12/02/2017', 2423.15,2);
insert into NotaFiscal values (4,'10/02/2017', 34334.88,4);
insert into NotaFiscal values (5,'11/02/2017', 9837.79,1);
commit;



 
 insert into Itens values (1, 45, 502.00, 2, 3);
 insert into Itens values (2, 345, 2238.00,  1, 1);
 insert into Itens values (3, 775, 2092.00, 1, 2);
 insert into Itens values (4, 34, 3338.00,  3, 1);
 insert into Itens values (5, 57, 333.00,  4, 5);
 insert into Itens values (6, 47, 560,  2, 4);
 insert into Itens values (7, 88, 5066.45,  1, 3);
 insert into Itens values (8, 233, 9383.64,  4, 2);
 insert into Itens values (9, 663, 9322.57,  5, 3);
 commit;
 
select * from notafiscal n  where pk_nota  = 1
select * from itens i where fk_nota = 2
select * from cliente where pk_cliente = 5

select count(*) as qtd_itens from itens where fk_nota = 1

select  SUM((valorunitario*quantidade)), fk_nota as somatorio from itens
group by fk_nota
order by fk_nota

select i.fk_nota, p.nome, i.quantidade from itens i, produto p
where p.pk_prod = i.fk_produto 
order by fk_nota 

select * from notafiscal n2 

select c.nome from cliente c, notafiscal n, itens i
where c.pk_cliente = n.fk_cliente and n.pk_nota = i.fk_nota and i.quantidade > 7
group by c.nome 

select c.nome from cliente c, itens i
where i.desconto > 0 
group by c.nome

select c.pk_cliente, c.nome, SUM(n.valortotal) from cliente c, notafiscal n  
where c.pk_cliente = n.fk_cliente 
group by c.pk_cliente, c.nome 
order by pk_cliente 







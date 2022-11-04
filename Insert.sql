Create Table Func(
Codigo 	Integer Not Null Primary Key, 
   Nome 	Varchar(30) Not Null,
   Salario 	Numeric(12,2),
   Sexo 	char(1),
   Idade 	Integer,
   Uf 		char (2),
   Cidade 	varchar (40) not null,
   Est_Civil 	char (10));
   
select * from func order by CODIGO


Update func 
	Set nome = 'Marcelo Bastian Silva'
	Where Codigo = 4
  
  INSERT INTO FUNC 
		VALUES (1, 'Rodrigo Cardoso', 1588, 'm', 25, 'sc', 'Lages', 'Solteiro');

	INSERT INTO FUNC 
		VALUES (2, 'Maria Marcela Joaquina', 2000, 'f', 23, 'pr', 'Pato Branco', 'Casado');

	INSERT INTO FUNC
		VALUES (4, 'Marcelo Bastianzinho Silva', 15000, 'M', 55, 'pr', 'Curitiba', 'Casado');

	INSERT INTO FUNC
		VALUES (3, 'Ana Paula Marcelos', 4500, 'f', 34, 'sc', 'Florianópolis', 'Casado');

	INSERT INTO FUNC
		VALUES (5, 'Tonico Alves', 1500, 'm', 25, 'sc', 'Sao Paulo', 'Solteiro');

	INSERT INTO FUNC
		VALUES (6, 'Jose de Deus', 6000, 'm', 35, 'ba', 'Savador', 'Casado'); 

	INSERT INTO FUNC
		VALUES (7, 'Jose Geraldo Marceleza Silva', 12000, 'M', 24, 'AC', 'Rio Alerta', 'Solteiro'); 

	INSERT INTO FUNC
		VALUES (8, 'Marcelo Jose Tanosbares', 15000, 'M', 40, 'rs', 'Soledade', 'CASADO'); 

	INSERT INTO FUNC
		VALUES (9, 'Maria das Vasmarcelos', 15000, 'f', 18, 'AM', 'Manaus', 'Casada'); 

	INSERT INTO FUNC 
		VALUES (10, 'Jacira Caninana dos Patos', 8000, 'F', 23, 'sp', 'Carai', 'CasadA'); 

	INSERT INTO FUNC
		VALUES (11, 'Valete Juvenal Odioso', 9000, 'M', 30, 'SP', 'São Paulo', 'SolteiRO'); 

	INSERT INTO FUNC
		VALUES (12, 'Juracioso Pedroso Trancoso', 8000, 'm', 44, 'pr', 'Rolandia', 'Solteiro'); 

	INSERT INTO FUNC
		VALUES (13, 'Luciel dos Pastel', 5000, 'f', 48, 'RS', 'Não Me Toque', 'Casada'); 	
		
	INSERT INTO FUNC
		VALUES (14, 'Lorencina Alvarrenga Marcelo', 20000, 'f', 59, 'TO', 'Palmas', 'Solteira'); 

	INSERT INTO FUNC
		VALUES (15, 'Zeduardo Lapradaria', 1000, 'm', 25, 'SC', 'Blumenau', 'Casado'); 

		
	update FUNC
	set salario = salario * 10
	where codigo = 12
	
delete from func 
	Where Codigo = 4

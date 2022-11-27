/*Usa o domínio como tipo de dado, assim ele respeita uma regra propria*/


create domain Dm_Chaveprimaria
INT not null 
check (VALUE > 0);


create domain Dm_nome
Varchar(50)


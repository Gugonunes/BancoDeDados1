/*Exercício 1*/
select COUNT(CODIGO) as qtde_func from FUNC

/*Exercício 2*/
select COUNT(CODIGO) as func_sc from FUNC
where upper(uf) = 'SC'

/*Exercício 3*/
select COUNT(CODIGO) as qtd_sexo_informado from FUNC
where sexo != ''

select * from FUNC

/*Lista 2*/

select COUNT(CODIGO), uf from func 
where UPPER(est_civil) = 'CASADO' or UPPER(est_civil) = 'CASADA' and UPPER(sexo) = 'M'
group by uf 
order by uf 


select AVG(idade), est_civil, cidade from func
group by est_civil, cidade 
having AVG(idade) > 18

/*Lista 3*/
select avg(salario), uf from FUNC
where UPPER(uf) = 'BA'
group by uf

select avg(salario), uf from FUNC
group by uf

select avg(salario), sexo from FUNC
group by sexo

select avg(idade) from FUNC
where salario <= 15000 and salario >=10000

select max(salario), nome from func
where salario = (select MAX(salario) from func)
group by nome

select nome from func
where salario > (select AVG(salario) from func)
group by nome


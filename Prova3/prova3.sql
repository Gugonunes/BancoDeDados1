
/*Questão 1*/
select c.nomecliente, sum(p.valor) as valor, v.nomevendedor from cliente c, pedido p, vendedor v
where c.codcliente = p.refcli and p.refvend = v.codvendedor
and p.data = '2022-10-12'
and (v.codvendedor = 1 or v.codvendedor = 4 or v.codvendedor = 6)
group by c.nomecliente, v.nomevendedor

/*Questão 2*/
select c.nomecliente, count(c.codcliente) as "QuantPedidos", sum(p.valor) as "TotalPedidos"
from cliente c, pedido p
where p.refcli = c.codcliente 
and p.data = '2022-10-12'
and p.refprazo = 1
group by c.nomecliente
having sum(p.valor) > 100
order by count(c.codcliente) desc

/* Questão 3 */

select c.codcliente, c.nomecliente, sum(p.valor) as valor from cliente c
left join pedido p
on c.codcliente = p.refcli 
group by c.nomecliente, c.codcliente
order by valor desc

/*Questão 4*/
select p.nomeproduto, count(p2.refprod) as "QtdPedidos" from produto p
left join pedido p2
on p.codproduto  = p2.refprod
group by p.nomeproduto 
order by "QtdPedidos" desc

/*Questão 5*/

select result.nomeproduto, QtdPedidos, result.total from (
select p.nomeproduto, count(p2.refprod) as QtdPedidos, 'Total Venda' as total
from produto p
left join pedido p2
on p.codproduto  = p2.refprod
group by p.nomeproduto

union

select p.nomeproduto, count(p2.refprod) as QtdPedidos, 'Total Crias' as total from produto p
left join pedido p2
on p.codproduto  = p2.refprod
where p2.data = '2022-10-12'
group by p.nomeproduto) as result

where result.QtdPedidos > 0
group by result.nomeproduto, result.QtdPedidos, result.total
order by result.nomeproduto, result.QtdPedidos


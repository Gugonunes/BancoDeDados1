/* Questao 1 */
/* Versão com Join */
select s.id_source as "ID FONTE", s.source_name as "FONTE", p.desc_protocol, p.format  
from source s
left join protocol p
on s.id_protocol = p.id_protocol 
order by s.source_name 

/* Versão com produto cartesiano */
/* nao tem solução */


/* Questão 2 */
select p.desc_point, avg(measured_data) from measure m, point p 
where m.id_point = 4 and p.id_point = 4 
and m.time_collect between '2021-03-02' and '2021-03-05'
group by p.desc_point
having avg(measured_data) > 20

union 

select p.desc_point, avg(measured_data) from measure m, point p 
where  m.id_point = 8 and p.id_point = 8
and m.time_collect between '2021-03-02' and '2021-03-05'
group by p.desc_point 
having avg(measured_data) > 20

union 

select p.desc_point, avg(measured_data) from measure m, point p 
where m.id_point = 9 and p.id_point = 9 
and m.time_collect between '2021-03-02' and '2021-03-05'
group by p.desc_point 
having avg(measured_data) > 20

/* Questão 3 */
select concat('Dados de: ',(
select p.desc_point  from source s, point p 
where s.id_source = 1 and (s.id_source = p.id_source))) as "FONTE",
avg(measured_data) as "MED", MAX(measured_data) as "MAX",
MIN(measured_data) as "MIN", count(measured_data) as "QTD"
from measure m
where id_point = 4

/* Questão 4 */
select count(s.id_protocol), p.desc_protocol from source s
right join protocol p 
on p.id_protocol = s.id_protocol 
group by p.desc_protocol 
order by count(s.id_protocol) desc





select avg(salario) as mediaSal, 'velhinhos' || 'velinhas' from func where codigo = 10

select cast(codigo as char(20)) || '-' from func where codigo =10
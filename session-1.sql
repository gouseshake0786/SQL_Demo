 --inline comment
/* this is a multiline comment
to return all the records from customers table */
select * from customers;

select
	first_name,
	country,
	score
from customers;

select * from customers where score != 0;

select * from customers order by score ASC;

select * from customers order by score DESC;

select * from customers order by country ASC, score DESC



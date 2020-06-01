select min(f_price) as lowest_price from furniture;

select f_type, avg(f_price) as average_price from furniture
group by f_type;
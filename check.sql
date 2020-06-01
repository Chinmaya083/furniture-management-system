
alter table customer_details
add constraint ph_val
check (cust_ph not like '%[^0-9]%');

alter table furniture
add constraint qty_check
check (in_stock >= 0);



select cust_name, cust_ph, cust_addr from customer_details 
where cust_id in (select cust_no from sold_furniture
			where sell_date = '2019-06-15');


with temp (trans_id,qty,model_no,price) as (select trans_id, qty, model_no, f_price from sold_furniture, furniture
where model_no = mod_id)
select sum(qty * price) as revenue from temp;


with temp (trans_id,qty,model_no,price,model_name) as (select trans_id, qty, model_no, f_price, f_model from sold_furniture, furniture
where model_no = mod_id)
select model_name,model_no from temp
where (qty*price) in (select max(qty*price) from temp);
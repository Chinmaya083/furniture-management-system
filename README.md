# furniture-management-system
A simple dbms project which demonstrates the backend process of a furniture shop's dbms using MySQL server.
I've just created a fake database for convenience.
All tables are at least in 3NF.
The trigger updates the furniture table every time a row is added to sold_furniture, i.e, updates the furniture stock every time a transaction is made.
The check contraints check if the digits of ph_no are only numbers and also ensure that the furniture stock doesn't go below 0.
I've demonstrated a couple of simple queries.
The nested queries used help determine 1) Customer details of all those who made purchases on a particular date
                                       2) Revenue earned
                                       3) Model that brought in the most revenue.
I've also demonstrated an inner joins and full outer joins.

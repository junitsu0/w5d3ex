-- Question 1

select first_name, last_name, district
from customer
join address
on address.address_id = customer.address_id
where district = 'Texas';


--Answer = customer_id of 10, 122, 310, 405, 567
------------------------------
--Question 2

select first_name, last_name, amount
from customer
join payment
on customer.customer_id = payment.customer_id
where amount > 6.99
;

--Answer = see query 1406
------------------------------
--Question 3

select first_name, last_name
from customer;

select SUM(amount), customer_id 
from payment
group by customer_id
having SUM(amount) > 175
;
--Answer = 
-------------------------------
--Question 4

select customer_id
from city

--Answer = 
--------------------------------
--Question 5

SELECT *
FROM category 
WHERE category_id = (
	SELECT category_id
	FROM film_category 
	GROUP BY category_id
	ORDER BY COUNT(*) DESC
	LIMIT 1
);

--Answer = Sports @ 15
--------------------------------
--Question 6



--List all the products that have been sold and not sold

select p.product_name, p.stock -- select column names from table p
from products_tb p --renaming products tb to p
left join order_items_tb oi on p.product_id = oi.product_id; --rename to oi then left join 

--Retrieve orders along with their total number of items--

select o.order_id, sum(oi.quantity) as total_items 
from orders_tb o
join order_items_tb oi on o.order_id = oi.order_id
group by o.order_id;


--display all the products that have a stock of more than 50--
select product_name, description --look at product names and description
from products_tb -- take them from the products table
where stock > 50; --filter stock that is more than more than 50 (this is something that isn't displayed but calculated)

--using the select clause, create a subquery to answer this question
--/*what is the total number of orders placed by each customer*/

select 
c.customer_id,
c.first_name,
c.last_name,
	(select count(o.order_id)
	from orders_tb o
	where o.customer_id = c.customer_id
) as total_orders
from customers_tb c;


--what is the overall average order amount?--

select
average_order_amount
from
(select avg(total_amount) as average_order_amount
from orders_tb
) as average_order_amount;


--customers with 1000 or more orders--
select
	c.customer_id, --display
	c.first_name, --display
	c.last_name --display
	from customers_tb c -- from the customers table
	where c.customer_id in
	(
		select o.customer_id
		from orders_tb o
		group by o.customer_id
		having sum(o.total_amount) >= 1000
	);


select max(total_amount) as total_spent from orders_tb;




-- exercise: print out the list containing the number 
--of customers, grouped by the city 

select a.city
from customer_tb c
(count (address_id)
from address_tb a)
join customers_tb c on c.address_id = a.address_id
group by a.city;


-- what is the total number of products sold,
-- total revenue, and average revenue
-- per product? --

select p.product_name,
		sum(oi.quantity) as total_quantity, 
		sum(oi.quantity * oi.unit_price) as total_revenue,
		round(avg(oi.quantity * oi.unit_price),2) as avg_revenue
from order_items_tb as oi
join products_tb p on oi.product_id = p.product_id
group by p.product_name
order by total_quantity desc;

-- rank the products based on their total sales revenue,
-- highest to lower

-- 20. Calculate the monthly revenue, and show the month 
-- with the highest revenue.

create 

SELECT 
    o.order_date AS sales_month,  -- Extracts the month in 'YYYY-MM' format
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM 
    orders_tb AS o  -- Adjusted to the correct table name
JOIN 
    order_items_tb AS oi ON o.order_id = oi.order_id  -- Ensure correct join condition
GROUP BY 
    sales_month
ORDER BY 
    total_revenue DESC
LIMIT 1;







select * from products_tb
select * from orders_tb
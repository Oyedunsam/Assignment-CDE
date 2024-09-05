--Find a list of order IDS where either gloss_qty or poster_Qty is greater than 4000. 
--Only include the id field in the resulting table

Select id
from orders
where orders.gloss_qty > 4000 or orders.poster_qty > 4000


--Write a query that returns list of orders where Standard quantity is 0 and 
--either gloss and poster qty is over 1000
Select *
from orders
where standard_qty =0 and (orders.gloss_qty > 1000 or orders.poster_qty > 1000)

--Find the company names that start with "c"or "w" and where the primary contact 
--contains 'ana'or'Ana' but does not contain 'eana'

Select *
from accounts
where (name like 'W%' or name like 'C%') and 
(primary_poc like '%ana' or primary_poc like '%Ana' or primary_poc not like '%eana') 

--Provide a table that shows the region for each sales rep aling with their
--Associated accounts. Final table should include 3 columns region name, Sales rep name
--Account name. Sort the account alph A-z by account name.

Select r.name Region_name,s.name Sales_rep_name,a.name Account_name
from sales_reps s
join region r
on s.region_id=r.id
join accounts a
on a.sales_rep_id=s.id
order by 3


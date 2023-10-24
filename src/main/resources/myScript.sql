select product_name
from sqljoin.customers
join sqljoin.orders on customers.id = orders.customer_id
where customers.name LIKE :name;
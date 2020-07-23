SELECT customer.cus_id,email_address
FROM customer
LEFT JOIN cart ON customer.cus_id = cart.cus_id
WHERE cart.item_id  in (SELECT item_id
                         FROM item
                         WHERE item_type IN (SELECT item_type 
				                              FROM item_type
				                              WHERE EXTRACT(MONTH FROM sale_date)=05
				                              AND EXTRACT(YEAR FROM sale_date)=2020))
GROUP BY customer.cus_id
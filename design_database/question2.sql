SELECT customer.cus_id,email_address
FROM customer
LEFT JOIN cart ON customer.cus_id = cart.cus_id
WHERE cart.item_id  in (SELECT item_id
                          FROM purchasepricechange
                           where (newprice - oldprice) < 0)

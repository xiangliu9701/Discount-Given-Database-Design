SELECT sum(newprice - oldprice)as pricechange
FROM purchasepricechange
Where item_id = 10001
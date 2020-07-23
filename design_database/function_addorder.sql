CREATE OR REPLACE FUNCTION Addorder(order_id in numeric(64),cus_id in numeric(64),
                                       total_price in numeric(64))
RETURNS VOID
AS 
$$
BEGIN
  INSERT INTO orders(order_id,cus_id,total_price)
  VALUES (order_id,cus_id,total_price);
END;
$$ LANGUAGE plpgsql
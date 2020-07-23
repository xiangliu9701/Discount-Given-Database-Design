CREATE OR REPLACE FUNCTION Addcart(cus_id in numeric(64),item_id in numeric(64))
RETURNS VOID
AS 
$$
BEGIN
  INSERT INTO cart(cus_id,item_id)
  VALUES (cus_id,item_id);
END;
$$ LANGUAGE plpgsql
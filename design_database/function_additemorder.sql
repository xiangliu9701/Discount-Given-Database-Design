CREATE OR REPLACE FUNCTION Addorderitem(item_id in numeric(64),
                                       item_type in VARCHAR(255),
                                       cus_id in numeric(64))
RETURNS VOID
AS 
$$
BEGIN
  INSERT INTO order_item(item_id,item_type,cus_id)
  VALUES (item_id,item_type,cus_id);
END;
$$ LANGUAGE plpgsql
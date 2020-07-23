CREATE OR REPLACE FUNCTION Additem(item_id in numeric(64),item_type in VARCHAR(255),
                              purchasing_p in numeric(8,4),selling_p in numeric(8,4), 
                              size in VARCHAR(255))
RETURNS VOID
AS 
$$
BEGIN
  INSERT INTO item(item_id,item_type,purchasing_p,selling_p, size)
  VALUES (item_id,item_type,purchasing_p,selling_p, size);
END;
$$ LANGUAGE plpgsql
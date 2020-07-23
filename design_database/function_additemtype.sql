CREATE OR REPLACE FUNCTION Additemtype(item_type VARCHAR(255),
                                       psale_date DATE)
RETURNS VOID
AS 
$$
BEGIN
  INSERT INTO item_type(item_type,sale_date)
  VALUES (item_type,psale_date);
END;
$$ LANGUAGE plpgsql
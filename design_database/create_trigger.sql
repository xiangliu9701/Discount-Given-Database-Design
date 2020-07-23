CREATE OR REPLACE FUNCTION purchasepricechangef()
RETURNS TRIGGER LANGUAGE plpgsql
AS $$
  BEGIN
    INSERT INTO purchasepricechange(pricechange_id,oldprice,newprice,item_id,changedate)
	VALUES (COALESCE((SELECT MAX(pricechange_id)+1 FROM purchasepricechange),1),
		   OLD.purchasing_p,
		   NEW.purchasing_p,
		   New.item_id,
		   current_date);
  RETURN NEW;
  END;
$$;

CREATE TRIGGER purchasepricechangeTrigger
BEFORE UPDATE OF purchasing_p on item
FOR EACH ROW 
EXECUTE PROCEDURE purchasepricechangef();
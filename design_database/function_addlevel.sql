CREATE OR REPLACE FUNCTION Addlevel(levels in numeric(64),
                                       points in numeric(64),
                                       priviledge in VARCHAR(255))
RETURNS VOID
AS 
$$
BEGIN
  INSERT INTO levels(levels,points,priviledge)
  VALUES (levels,points,priviledge);
END;
$$ LANGUAGE plpgsql
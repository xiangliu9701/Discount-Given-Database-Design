CREATE TABLE purchasepricechange(
pricechange_id numeric(64) NOT NULL PRIMARY KEY,
oldprice decimal(7,2) NOT NULL,
newprice decimal(7,2) NOT NULL,
item_id numeric(64) NOT NULL,
changedate DATE NOT NULL,
FOREIGN KEY (item_id) REFERENCES item(item_id));
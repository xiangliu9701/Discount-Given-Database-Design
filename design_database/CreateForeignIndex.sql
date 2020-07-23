Create Index CustomerLevelsIdx
on customer(levels);

Create Index OrderCusIdx
on orders(cus_id);

Create Index OrditItemIdIdx
on order_item(item_id);

Create Index OrditItemTypeIdx
on order_item(item_type);

Create UNIQUE Index OrditCusIdx
on order_item(cus_id);

Create Index ItemItemTypeIdx
on item(item_type);

Create Index CartCusIdx
on cart(cus_id);

Create Index CartItemIdIdx
on cart(item_id);
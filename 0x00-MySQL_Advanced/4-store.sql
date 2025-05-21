-- TASK: Create a trigger to decrease item quantity after adding a new order
-- When a row is inserted into `orders`, reduce `items.quantity` by `NEW.number`

DELIMITER $$

CREATE TRIGGER decrease_item_quantity
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
  UPDATE items
  SET quantity = quantity - NEW.number
  WHERE name = NEW.item_name;
END$$

DELIMITER ;

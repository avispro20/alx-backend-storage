-- Creates a triger that decreases the quantity of an item after adding
-- Quantity in the table items can be negative.
CREATE trigger decrease_q AFTER INSERT ON orders FOR EACH ROW
UPDATE items SET quantity = quantity - NEW.number WHERE name=NEW.item_name;

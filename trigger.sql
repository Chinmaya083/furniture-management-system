CREATE TRIGGER stock_update AFTER INSERT ON sold_furniture
FOR EACH ROW
  UPDATE furniture
     SET in_stock = in_stock - new.qty
   WHERE furniture.model_no = NEW.mod_id;
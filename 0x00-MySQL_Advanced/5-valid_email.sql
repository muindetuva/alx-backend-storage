-- TASK: Create a trigger that resets valid_email to 0 when email changes
-- This trigger fires AFTER an update and only resets if email is different

DELIMITER $$

CREATE TRIGGER reset_valid_email
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
  IF NEW.email != OLD.email THEN
    SET NEW.valid_email = 0;
  END IF;
END$$

DELIMITER ;

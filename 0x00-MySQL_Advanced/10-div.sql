-- TASK: Create a function SafeDiv that divides a by b or returns 0 if b is 0

DELIMITER $$

CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS INT
DETERMINISTIC
BEGIN
  IF b = 0 THEN
    RETURN 0;
  ELSE
    RETURN a / b;
  END IF;
END$$

DELIMITER ;

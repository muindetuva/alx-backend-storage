-- TASK: Create a stored procedure AddBonus that adds a correction for a student
-- If the project doesn't exist, create it first, then insert the correction

DELIMITER $$

CREATE PROCEDURE AddBonus(IN user_id INT, IN project_name VARCHAR(255), IN score INT)
BEGIN
  DECLARE project_id INT;

  -- Try to get the project ID if it exists
  SELECT id INTO project_id
  FROM projects
  WHERE name = project_name
  LIMIT 1;

  -- If project_id is NULL, the project doesn't exist, so insert it
  IF project_id IS NULL THEN
    INSERT INTO projects (name) VALUES (project_name);
    SET project_id = LAST_INSERT_ID();
  END IF;

  -- Insert the correction linking user, project, and score
  INSERT INTO corrections (user_id, project_id, score)
  VALUES (user_id, project_id, score);
END$$

DELIMITER ;

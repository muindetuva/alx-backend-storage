-- TASK: Create a procedure to compute and store a user's average score in users.average_score

DELIMITER $$

CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id INT)
BEGIN
  DECLARE avg_score FLOAT;

  -- Calculate average score from corrections for this user
  SELECT AVG(score) INTO avg_score
  FROM corrections
  WHERE user_id = user_id;

  -- Update user's average_score
  UPDATE users
  SET average_score = avg_score
  WHERE id = user_id;
END$$

DELIMITER ;

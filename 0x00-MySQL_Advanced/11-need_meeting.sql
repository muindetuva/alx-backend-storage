-- TASK: Create a view `need_meeting` that lists names of students
-- who have a score less than 80 and either no last meeting
-- or last meeting was more than one month ago

CREATE VIEW need_meeting AS
SELECT name
FROM students
WHERE score < 80
  AND (
    last_meeting IS NULL
    OR last_meeting < (CURRENT_DATE - INTERVAL 1 MONTH)
  );

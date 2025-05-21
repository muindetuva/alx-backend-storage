-- TASK: Create a `users` table with unique email and auto-incrementing id
-- Requirements:
-- - id: INT, NOT NULL, AUTO_INCREMENT, PRIMARY KEY
-- - email: VARCHAR(255), NOT NULL, UNIQUE
-- - name: VARCHAR(255)
-- - Table must not fail if it already exists

CREATE TABLE IF NOT EXISTS users (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(255) NOT NULL UNIQUE,
  name VARCHAR(255)
);

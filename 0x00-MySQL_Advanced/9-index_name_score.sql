-- TASK: Create a composite index `idx_name_first_score` on the first character of `name` and on `score` column

CREATE INDEX idx_name_first_score
ON names (name(1), score);

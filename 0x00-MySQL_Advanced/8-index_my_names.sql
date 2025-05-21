-- TASK: Create an index `idx_name_first` on the first character of the `name` column in `names` table

CREATE INDEX idx_name_first
ON names (name(1));

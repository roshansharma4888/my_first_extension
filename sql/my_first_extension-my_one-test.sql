CREATE EXTENSION my_first_extension;

-- Function should return 1
SELECT my_one();

-- Verify return type is integer
SELECT pg_typeof(my_one());

DROP EXTENSION my_first_extension;
-- Function should be gone after dropping extension
SELECT my_one();


CREATE EXTENSION my_first_extension;

-- C function should return 2
SELECT my_two();

-- Verify return type
SELECT pg_typeof(my_two());

-- Sanity: my_one + my_two = 3
SELECT my_one() + my_two() AS total;

DROP EXTENSION my_first_extension;
-- Both should be gone
SELECT my_two();


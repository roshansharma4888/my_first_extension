CREATE TABLE my_first_extension_table (
    id SERIAL PRIMARY KEY,
    my_string VARCHAR NOT NULL
);

INSERT INTO my_first_extension_table (my_string) VALUES('Hello, World');

CREATE FUNCTION my_one()
RETURNS INT
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN 1;
END;
$$;

CREATE FUNCTION my_two()
RETURNS INT
AS 'MODULE_PATHNAME', 'my_get_two'
LANGUAGE C;

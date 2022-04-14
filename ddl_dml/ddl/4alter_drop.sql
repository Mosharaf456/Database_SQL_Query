
ALTER TABLE test_database.test_table 
ADD COLUMN last_name VARCHAR(45) NULL AFTER first_name,
##
DROP INDEX first_name,
ADD INDEX first_name_index (first_name DESC) VISIBLE;

### DROP DATABASE test_database;
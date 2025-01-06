-- prepares a MySQL server for the project

-- create database if it does not exist
CREATE DATABASE IF NOT EXISTS hbnb_test_db;

-- create user with password hbnb_test_pwd on localhost
CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd';

-- Giving all privildges to hbnb_testn on hbnb_test_db database
GRANT ALL PRIVILEGES ON hbnb_test_db.* TO 'hbnb_test'@'localhost';

-- Giving select priviledges on performance_schema database
GRANT SELECT ON performance_schema.* TO 'hbnb_test'@'localhost';

-- Flush changes to ensure that they take effect
FLUSH PRIVILEGES;

-- Create database if not exists
CREATE DATABASE IF NOT EXISTS mydb;

-- Switch to the newly created database
USE mydb;

-- Create user if not exists
CREATE USER IF NOT EXISTS 'admin'@'%' IDENTIFIED BY 'admin';

-- Grant privileges to the user
GRANT ALL PRIVILEGES ON mydb.* TO 'admin'@'%' WITH GRANT OPTION;

-- Flush privileges
FLUSH PRIVILEGES;

-- Create table
CREATE TABLE IF NOT EXISTS messages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    message TEXT
);

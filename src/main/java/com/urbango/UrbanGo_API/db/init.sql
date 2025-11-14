-- Create database
CREATE DATABASE IF NOT EXISTS urbango
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

CREATE USER IF NOT EXISTS 'urbango'@'localhost'
  IDENTIFIED BY 'password';

GRANT ALL PRIVILEGES ON urbango.* TO 'urbango'@'localhost';
FLUSH PRIVILEGES;

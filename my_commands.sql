CREATE USER 'venkat'@'localhost' IDENTIFIED BY 'password123';
CREATE DATABASE thoughtworks;
SHOW DATABASES;
GRANT ALL PRIVILEGES ON my_wiki.* TO 'venkat'@'localhost';
FLUSH PRIVILEGES;
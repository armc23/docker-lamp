CREATE DATABASE api_dev;
CREATE USER 'dev'@'localhost' IDENTIFIED BY '!superSecretnax'; 
CREATE USER 'dev'@'%' IDENTIFIED BY '!superSecretnax'; 
GRANT ALL PRIVILEGES ON api_dev.* TO 'dev'@'localhost';
GRANT ALL PRIVILEGES ON api_dev.* TO 'dev'@'%';
FLUSH PRIVILEGES;
use api_dev;
CREATE table users(
          user_id int not null AUTO_INCREMENT,
          username varchar(100) NOT NULL,
          PRIMARY KEY (user_id)
);

INSERT INTO users(username) VALUES("armen");

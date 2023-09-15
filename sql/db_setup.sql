-- create user
SELECT EXISTS(SELECT 1 FROM mysql.user WHERE user = 'cosc203') AS user_exists;
CREATE USER 'cosc203' IDENTIFIED BY 'password';
GRANT ALL ON *.* TO 'cosc203' WITH GRANT OPTION;

-- create database
DROP TABLE IF EXISTS ConservationStatus;
DROP DATABASE ASGN2;

CREATE DATABASE ASGN2;
USE ASGN2;

-- create tables
CREATE TABLE ConservationStatus (
    status_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    status_name VARCHAR(255) NOT NULL,
    status_colour CHAR(7) NOT NULL
);
CREATE TABLE Bird (
    bird_id INT NOT NULL UNIQUE,
    primary_name VARCHAR(255) NOT NULL,
    english_name VARCHAR(255) NOT NULL,
    scientific_name VARCHAR(255) NOT NULL,
    order_name VARCHAR(255) NOT NULL,
    family VARCHAR(255) NOT NULL,
    weight DECIMAL NOT NULL,
    length DECIMAL NOT NULL,
    status_id INT NOT NULL,
    PRIMARY KEY (bird_id),
    FOREIGN KEY (status_id) REFERENCES ConservationStatus(status_id)
);
CREATE TABLE Photos (
    bird_id INT NOT NULL,
    filename VARCHAR(255) NOT NULL,
    photographer VARCHAR(255) NOT NULL,
    PRIMARY KEY (bird_id),
    FOREIGN KEY (bird_id) REFERENCES Bird(bird_id)
);
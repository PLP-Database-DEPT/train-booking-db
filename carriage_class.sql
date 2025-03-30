
USE trainbookingDB;
--creating carriage_class table

CREATE TABLE carriage_class 
(
id INT PRIMARY KEY AUTO_INCREMENT, 
class_name VARCHAR(100) NOT NULL, 
seating_capacity INT NOT NULL
);
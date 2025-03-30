USE trainbookingDB;

-- Create the train_journey table with the following columns:
-- id (int) – Primary Key
-- schedule_id (int) – Foreign Key
-- name (varchar)
-- Set id as the primary key.
-- Establish a foreign key relationship for schedule_id with the relevant schedule table.

CREATE TABLE train_journey(
    id INT PRIMARY KEY, 
    schedule_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    FOREIGN KEY (schedule_id) REFERENCES schedule(id)
);

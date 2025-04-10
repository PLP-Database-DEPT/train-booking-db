-- Create Database
CREATE DATABASE trainbookingDB;

-- Use the database
USE trainbookingDB;

-- Table for storing schedule details
CREATE TABLE schedule (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- Table for storing train journey details
CREATE TABLE train_journey (
    id INT PRIMARY KEY, 
    schedule_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    FOREIGN KEY (schedule_id) REFERENCES schedule(id)
);

-- Table for storing train station details
CREATE TABLE train_station (
    id INT PRIMARY KEY,
    station_name VARCHAR(200)
);

-- Table to store the relationship between journeys and stations
CREATE TABLE journey_station (
    journey_id INT NOT NULL,
    station_id INT NOT NULL,
    stop_order INT NOT NULL,
    departure_time TIMESTAMP NOT NULL,
    PRIMARY KEY (journey_id, station_id),
    FOREIGN KEY (journey_id) REFERENCES train_journey(id),
    FOREIGN KEY (station_id) REFERENCES train_station(id)
);

-- Table for different carriage classes
CREATE TABLE carriage_class (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    class_name VARCHAR(100) NOT NULL, 
    seating_capacity INT NOT NULL
);

-- Table to store pricing information for each schedule and carriage class
CREATE TABLE carriage_price (
    schedule_id INT,
    carriage_class_id INT,
    price DECIMAL(10,2),
    FOREIGN KEY (schedule_id) REFERENCES schedule(id),
    FOREIGN KEY (carriage_class_id) REFERENCES carriage_class(id)
);

-- Table to store the relationship between journeys and carriages
CREATE TABLE journey_carriage (
    journey_id INT NOT NULL,
    carriage_class_id INT NOT NULL,
    position INT NOT NULL,
    PRIMARY KEY (journey_id, carriage_class_id),
    FOREIGN KEY (journey_id) REFERENCES train_journey(id),
    FOREIGN KEY (carriage_class_id) REFERENCES carriage_class(id)
);

-- Table for storing booking statuses
CREATE TABLE booking_status (
    id INT PRIMARY KEY,
    name VARCHAR(100) 
);

-- Table for storing passenger details
CREATE TABLE passenger (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email_address VARCHAR(100),
    password VARCHAR(100)
);

-- Table for storing booking details
CREATE TABLE booking (
    id INT PRIMARY KEY,
    carriage_class_id INT,
    passenger_id INT, 
    position INT,
    status_id INT,  
    booking_date TIMESTAMP, 
    starting_station_id INT, 
    ending_station_id INT, 
    train_journey_id INT, 
    ticket_class_id INT,
    amount_paid INT,
    ticket_no INT,
    seat_no INT,
    FOREIGN KEY (passenger_id) REFERENCES passenger(id),
    FOREIGN KEY (status_id) REFERENCES booking_status(id),
    FOREIGN KEY (starting_station_id) REFERENCES train_station(id),
    FOREIGN KEY (ending_station_id) REFERENCES train_station(id),
    FOREIGN KEY (train_journey_id) REFERENCES train_journey(id),
    FOREIGN KEY (ticket_class_id) REFERENCES carriage_class(id)
);

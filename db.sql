CREATE DATABASE trainbookingDB;






CREATE TABLE booking (
    id INT NOT NULL PRIMARY KEY,
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
	seat_no INT
    FOREIGN KEY (passenger_id) REFERENCES passenger(id),
    FOREIGN KEY (status_id) REFERENCES booking_status(id),
	FOREIGN KEY (starting_station_id) REFERENCES train_station(id),
	FOREIGN KEY (ending_station_id) REFERENCES train_station(id),
	FOREIGN KEY (train_journey_id) REFERENCES journey_station(id),
	FOREIGN KEY (ticket_class_id) REFERENCES carriage_class(id),
);


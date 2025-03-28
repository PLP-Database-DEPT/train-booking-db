CREATE DATABASE trainbookingDB;






CREATE TABLE booking (
    id INT NOT NULL PRIMARY KEY,
    carriage_class_id INT,
	passenger_id INT, --foreign
    position INT,
	status_id INT,  --foreign
	booking_date TIMESTAMP, --using timestamp instead of DATETIME because am using postgresql
	starting_station_id INT, --foreign
	ending_station_id INT, --foreign
	train_journey_id INT, --foreign
	ticket_class_id INT, --foreign
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


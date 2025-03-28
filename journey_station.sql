use train_bookingdb;
-- create table journey_station, setting the primary and foreign keys
CREATE TABLE journey_station(
journey_id INT NOT NULL,
station_id INT NOT NULL,
stop_order INT NOT NULL,
departure_time TIMESTAMP NOT NULL,
    PRIMARY KEY (journey_id, station_id),
    FOREIGN KEY (journey_id) REFERENCES train_journey(journey_id),
    FOREIGN KEY (station_id) REFERENCES train_station(station_id)
);

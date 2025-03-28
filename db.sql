-- trainbookingDb

-- carriage_price table | From bash terminal
CREATE TABLE carriage_price(
    -> schedule_id INT,
    -> carriage_class_id INT,
    -> price DECIMAL(10,2),
    -> FOREIGN KEY(schedule_id) REFERENCES schedule(id),
    -> FOREIGN KEY(carriage_class_id) REFERENCES carriage_class(id)
    -> );

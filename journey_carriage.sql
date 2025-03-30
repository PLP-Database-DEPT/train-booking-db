 use trainbookingDB;
/*Create the journey_carriage table with the following columns:
journey_id (int) – Foreign Key ✅
carriage_class_id (int) – Foreign Key✅
position (int)✅

Set appropriate foreign key relationships for journey_id and carriage_class_id. ✅*/
CREATE TABLE IF NOT EXISTS  journey_carriage (
  journey_id INT NOT NULL,
  carriage_class_id INT NOT NULL,
  position INT NOT NULL,
  PRIMARY KEY(journey_id,carriage_class_id),
  FOREIGN KEY(journey_id) REFERENCES train_journey(id),
  FOREIGN KEY(carriage_class_id) REFERENCES carriage_class(id)
);

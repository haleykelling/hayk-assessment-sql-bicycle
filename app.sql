-- Create a table, `owners`
CREATE TABLE owners (id INTEGER PRIMARY KEY, name TEXT);
-- Create a related table, `bicycles`
CREATE TABLE bicycles (id INTEGER PRIMARY KEY, color TEXT, owner_id INTEGER);
-- Create 3 bicycles and 2 owners
INSERT INTO owners (name) VALUES ("Haley");
INSERT INTO owners (name) VALUES ("Lauren");
INSERT INTO bicycles (color, owner_id) VALUES ("blue", 1);
INSERT INTO bicycles (color, owner_id) VALUES ("purple", 1);
INSERT INTO bicycles (color, owner_id) VALUES ("yellow", 2);
-- Update the properties of one of the bicycles
UPDATE bicycles SET color = "green" WHERE id = 3;
-- List all the bicycles
SELECT * FROM bicycles;
-- List all the bicycles with their owners
SELECT * FROM bicycles INNER JOIN owners ON owners.id = bicycles.owner_id;
-- Delete one of the bicycles
DELETE FROM bicycles WHERE id = 2;
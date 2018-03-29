-- DROP TABLE visits;
DROP TABLE students;
-- DROP TABLE locations;

CREATE TABLE students (
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  second_name VARCHAR(255),
  house VARCHAR(255),
  age INT
);

-- CREATE TABLE locations (
--   id SERIAL4 PRIMARY KEY,
--   category VARCHAR(255),
--   name VARCHAR(255)
-- );
--
-- CREATE TABLE visits (
--   id SERIAL4 PRIMARY KEY,
--   user_id INT4 REFERENCES users(id) ON DELETE CASCADE,
--   location_id INT4 REFERENCES locations(id) ON DELETE CASCADE,
--   review TEXT
-- );

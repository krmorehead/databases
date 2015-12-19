CREATE DATABASE chat;

USE chat;

CREATE TABLE rooms(
  room_name varchar(225),
  -- message_id int,
  -- user_id int,
  id int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY(id)
);

CREATE TABLE users(
  user_name varchar(225),
  room_id int,
  -- message_id int,
  id int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY(id),
  FOREIGN KEY(room_id) REFERENCES rooms(id)    
);

CREATE TABLE messages (
  /* Describe your table here.*/
  message varchar(225),
  user_id int,
  room_id int,
  cid integer,
  time_stamp timestamp,
  id int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY(id),
  FOREIGN KEY(room_id) REFERENCES rooms(id),
  FOREIGN KEY(user_id) REFERENCES users(id)
);
/*
for foreign id's select the name from the other list
returning the id
can hardcode here
*/
INSERT INTO rooms
  (room_name, id)
VALUES
  ('lobby', 1),
  ('not Lobby', 2);

INSERT INTO users
  (user_name, room_id, id)
VALUES
  ('Ken Byle', 1, 1),
  ('Byle Ken', 2, 2);

INSERT INTO messages
  (message, user_id,room_id, cid, time_stamp,id)
VALUES
  ('Hello world', 1, 1, 1, NOW(), 1),
  ('Goodbye World', 2, 2, 2, NOW(), 2),
  ('Hello again world', 1, 1, 3, NOW(), 3);

/* Create other tables and define schemas for them here! */


-- CREATE TABLE rooms_users(
--   room_id int,
--   user_id int,
--   id int NOT NULL AUTO_INCREMENT,
--   PRIMARY KEY(id),
--   FOREIGN KEY(user_id) REFERENCES users(id),  
--   FOREIGN KEY(room_id) REFERENCES rooms(id)  
-- );



/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/


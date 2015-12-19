CREATE DATABASE chat;

USE chat;

CREATE TABLE rooms(
  room_name varchar(225),
  messages_id int,
  user_id int,
  id int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY(id)
);

CREATE TABLE users(
  user_name varchar(225),
  room_id int,
  messages_id int,
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


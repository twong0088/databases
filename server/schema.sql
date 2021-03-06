CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  id int NOT NULL AUTO_INCREMENT,
  username varchar(20),
  PRIMARY KEY (id)
);

-- CREATE TABLE rooms (
--   id int,
--   roomname varchar(20),
--   PRIMARY KEY (id)
-- );

CREATE TABLE messages (
  /* Describe your table here.*/
  id int NOT NULL AUTO_INCREMENT,
  message varchar(255),
  roomname varchar(30),
  user_id int NOT NULL,
  PRIMARY KEY (id),
  -- CONSTRAINT fk_username FOREIGN KEY (user_id) REFERENCES users(id)
  FOREIGN KEY (user_id) REFERENCES users (id)
);


/* Create other tables and define schemas for them here! */


/*  Execute this file from the command line by typing:
 *    mysql -u root -p < server/schema.sql
 *  to create the database and the tables.*/


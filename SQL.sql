create database library_system;
use library_system;

CREATE TABLE book
(
  name VARCHAR(50) NOT NULL ,
  bid INT NOT NULL identity(1,1),
  author VARCHAR(50) NOT NULL,
  PRIMARY KEY (bid)
);

CREATE TABLE library
(
  lid INT NOT NULL identity(1,1),
  name VARCHAR(50) NOT NULL,
  place VARCHAR(50) NOT NULL,
  id INT NOT NULL,
  PRIMARY KEY (lid),
  FOREIGN KEY (id) REFERENCES book(bid)
);

CREATE TABLE std
(
  sid INT NOT NULL identity(1,1),
  fname VARCHAR(50) NOT NULL,
  lname VARCHAR(50) NOT NULL,
  PRIMARY KEY (sid)
);

CREATE TABLE publisher
(
  pid INT NOT NULL identity(1,1),
  name VARCHAR(50) NOT NULL,
  id INT NOT NULL,
  PRIMARY KEY (pid),
  FOREIGN KEY (id) REFERENCES book(bid)
);

CREATE TABLE borrow
(
  fsid INT NOT NULL,
  fbid INT NOT NULL,
  PRIMARY KEY (fsid, fbid),
  FOREIGN KEY (fsid) REFERENCES std(sid),
  FOREIGN KEY (fbid) REFERENCES book(bid)
);
insert into book (name,author) values ('hbrfr','jnj');
insert into library (name,place) values ('hbrfr','jnj');
insert into std (fname,lname) values ('hbrfr','jnj');
insert into publisher (name) values ('hbrfr');
insert into borrow (fsid, fbid) values (1,1);

select * from book;
select * from publisher;
select * from std;
select * from library;
select * from borrow;
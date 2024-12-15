-- Database

CREATE DATABASE library_managment

----------------------------------------------

-- Admin Table

CREATE TABLE admin (
  id int(11) NOT NULL PRIMARY KEY,
  email varchar(25) NOT NULL,
  pass varchar(25) NOT NULL
)


INSERT INTO admin 
VALUES
(1, 'nabilahmed0203@gmail.com', '1412912');


------------------------------------------------

-- Book Table

CREATE TABLE book (

  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  bookpic varchar(25) NOT NULL,
  bookname varchar(25) NOT NULL,
  bookdetail varchar(110) NOT NULL,
  bookaudor varchar(25) NOT NULL,
  bookpub varchar(25) NOT NULL,
  branch varchar(110) NOT NULL,
  bookprice varchar(25) NOT NULL,
  bookquantity varchar(25) NOT NULL,
  bookava int(11) NOT NULL,
  bookrent int(11) NOT NULL

)ENGINE=InnoDB;


INSERT INTO book 
VALUES
(4, 'arrow.jpg', 'Scott Gallagher', '1st edition', 'no idea', 'Suscipit', 'it', '756', '20', 16, 4),
(5, 'logo.png', 'Ferris Mclaughlin', 'Qui ex dolor fugiat ', 'Est voluptates offi', 'Dolorem earum accusa', 'electrical', '264', '157', 157, 0),
(6, 'arrow.png', 'harry', 'Ea quas nulla ration', 'Ut dolorem culpa ex', 'Eum proident quidem', 'it', '76', '3', 2, 1);


------------------------------------------------




-- Userdata Table

CREATE TABLE userdata (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name varchar(25) NOT NULL,
  email varchar(25) NOT NULL,
  pass varchar(25) NOT NULL,
  type varchar(25) NOT NULL
) ENGINE=InnoDB;


INSERT INTO userdata 
VALUES
(1, 'salman', 'idno22382@gmail.com', '123', 'student'),
(2, 'Randall Burch', 'voqo@mailinator.com', 'Ratione nulla dolore', 'teacher'),
(3, 'Gabriel Daugherty', 'bipacer@mailinator.com', 'Voluptas explicabo ', 'teacher'),
(5, 'salmannew', '1234@gmail.com', '123', 'teacher');


------------------------------------------------


-- Request book Table

CREATE TABLE requestbook (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  userid int(11) NOT NULL,
  bookid int(11) NOT NULL,
  username varchar(25) NOT NULL,
  usertype varchar(25) NOT NULL,
  bookname varchar(25) NOT NULL,
  issuedays varchar(25) NOT NULL,
  FOREIGN KEY (userid) REFERENCES userdata(id),
  FOREIGN KEY (bookid) REFERENCES book(id)
) ENGINE=InnoDB;


------------------------------------------------



-- Issue Book Table

CREATE TABLE issuebook (
    
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  userid int(11) NOT NULL,
  issuename varchar(25) NOT NULL,
  issuebook varchar(25) NOT NULL,
  issuetype varchar(25) NOT NULL,
  issuedays int(11) NOT NULL,
  issuedate varchar(25) NOT NULL,
  issuereturn varchar(25) NOT NULL,
  fine int(11) NOT NULL,
  FOREIGN KEY (userid) REFERENCES userdata(id)
)ENGINE=InnoDB;





INSERT INTO issuebook
VALUES
(2, 1, 'salman', 'Rich daddy poor dady', 'student', 3, '30/03/2021', '02/04/2021', 1800),
(3, 2, 'Randall Burch', 'Scott Gallagher', 'teacher', 4, '30/03/2021', '03/04/2021', 0),
(6, 1, 'salman', 'Scott Gallagher', 'student', 7, '30/03/2021', '06/04/2021', 1800),
(9, 5, 'salmannew', 'Scott Gallagher', 'teacher', 21, '30/03/2021', '20/04/2021', 0),
(10, 1, 'salman', 'Scott Gallagher', 'student', 7, '01/04/2021', '08/04/2021', 0),
(11, 1, 'salman', 'harry', 'student', 7, '01/04/2021', '08/04/2021', 0);
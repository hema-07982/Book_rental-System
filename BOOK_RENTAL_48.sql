set search_path to "public";

----TABLE BOOKS------
CREATE TABLE BOOKS (
	Book_ID INTEGER,
	Book_Name varchar(50) NOT NULL,
	Rent_Price FLOAT(30) NOT NULL,
	Author_Id INTEGER,
	Author_Name varchar(50) NOT NULL,
	Owner_ID  INTEGER,
	Book_Status VARCHAR(30),
	PRIMARY KEY (Book_ID)
);

INSERT INTO BOOKS(Book_ID,Book_Name,Rent_Price,Author_Id,Author_Name,Owner_ID,Book_Status) VALUES (1,'Politics of Opportunism',250,1001,'R P N Singh',101,'Rented');
INSERT INTO BOOKS(Book_ID,Book_Name,Rent_Price,Author_Id,Author_Name,Owner_ID,Book_Status) VALUES (2,'Malayalam poetry',200,1002,'Akk Achuthan Namboodri',102,'Not-Rented');
INSERT INTO BOOKS(Book_ID,Book_Name,Rent_Price,Author_Id,Author_Name,Owner_ID,Book_Status) VALUES (3,'The Testaments',300,1003,'Margaret Atwood',103,'Rented');
INSERT INTO BOOKS(Book_ID,Book_Name,Rent_Price,Author_Id,Author_Name,Owner_ID,Book_Status) VALUES (4,'Celestial Bodies',150,1004,'Jokha Alharthi',104,'Rented');
INSERT INTO BOOKS(Book_ID,Book_Name,Rent_Price,Author_Id,Author_Name,Owner_ID,Book_Status) VALUES (5,'Mind-Master',250,1005,'Viswanathan Anand and Susan Ninan',105,'Not-Rented');
INSERT INTO BOOKS(Book_ID,Book_Name,Rent_Price,Author_Id,Author_Name,Owner_ID,Book_Status) VALUES (6,'"Courts of India"',150,1006,'Chief Justice of India (CJI) Ranjan Gogoi',106,'Not-rented');
INSERT INTO BOOKS(Book_ID,Book_Name,Rent_Price,Author_Id,Author_Name,Owner_ID,Book_Status) VALUES (7,'Bridgital Nation',350,1007,'Shri N Chandrasekaran',107,'Rented');
INSERT INTO BOOKS(Book_ID,Book_Name,Rent_Price,Author_Id,Author_Name,Owner_ID,Book_Status) VALUES (8,'My Life, My Mission',200,1008,'Baba Ramdev',108,'Rented');
 
 




----TABLE RENTAL-----
CREATE TABLE RENTAL (
	Rental_ID INTEGER,
	Date_rent TIMESTAMP NOT NULL,
	Date_return TIMESTAMP NOT NULL,
	Book_ID INTEGER,
	Owner_ID INTEGER,
	Customer_ID varchar(30),
	Trans_status varchar(30) NOT NULL,
	PRIMARY KEY (Rental_ID)
);
INSERT INTO RENTAL(Rental_ID,Date_rent,Date_return,Book_ID,Owner_ID,Customer_ID,Trans_status) VALUES (001, '2020-11-24' , '2020-12-24', 2, 102 , 'A1' ,'Complete');
INSERT INTO RENTAL(Rental_ID,Date_rent,Date_return,Book_ID,Owner_ID,Customer_ID,Trans_status) VALUES (002, '2021-01-23' , '2021-02-23', 4, 104 , 'A2' ,'Complete');
INSERT INTO RENTAL(Rental_ID,Date_rent,Date_return,Book_ID,Owner_ID,Customer_ID,Trans_status) VALUES (003, '2021-01-05' , '2021-02-05', 1, 101 , 'A3' ,'Complete');
INSERT INTO RENTAL(Rental_ID,Date_rent,Date_return,Book_ID,Owner_ID,Customer_ID,Trans_status) VALUES (004, '2021-02-11' , '2021-03-11', 7, 107 , 'A4' ,'Complete');
INSERT INTO RENTAL(Rental_ID,Date_rent,Date_return,Book_ID,Owner_ID,Customer_ID,Trans_status) VALUES (005, '2021-01-05' , '2021-02-05', 2, 102 , 'A5' ,'InComplete');
INSERT INTO RENTAL(Rental_ID,Date_rent,Date_return,Book_ID,Owner_ID,Customer_ID,Trans_status) VALUES (006, '2021-04-15' , '2021-05-16', 8, 108 , 'A6' ,'Complete');
INSERT INTO RENTAL(Rental_ID,Date_rent,Date_return,Book_ID,Owner_ID,Customer_ID,Trans_status) VALUES (007, '2021-03-19' , '2021-04-19', 3, 103 , 'A7' ,'InComplete');
INSERT INTO RENTAL(Rental_ID,Date_rent,Date_return,Book_ID,Owner_ID,Customer_ID,Trans_status) VALUES (008, '2021-06-05' , '2021-07-05', 4, 104 , 'A8' ,'Complete');

SELECT * FROM RENTAL;





---TABLE CUSTOMER------
CREATE TABLE CUSTOMER (
	Customer_ID Varchar(30),
	First_name varchar(30) NOT NULL,
	Last_name varchar(30) NOT NULL,
	Gender varchar(30),
	Age INTEGER NOT NULL,
	Rental_ID INTEGER,
	PRIMARY KEY (Customer_ID)
);
INSERT INTO CUSTOMER(Customer_ID,First_name,Last_name,Gender,Age,Rental_ID ) VALUES ('A1','Shreya','Zen','Female',23,001);
INSERT INTO CUSTOMER(Customer_ID,First_name,Last_name,Gender,Age,Rental_ID ) VALUES ('A2','Rohit','shah','Male',19,002);
INSERT INTO CUSTOMER(Customer_ID,First_name,Last_name,Gender,Age,Rental_ID ) VALUES ('A3','Vrillina','Das','Female',20,003);
INSERT INTO CUSTOMER(Customer_ID,First_name,Last_name,Gender,Age,Rental_ID ) VALUES ('A4','Priya','Malik','Female',21,004);
INSERT INTO CUSTOMER(Customer_ID,First_name,Last_name,Gender,Age,Rental_ID ) VALUES ('A5','Rohan','Sharma','Male',25,005);
INSERT INTO CUSTOMER(Customer_ID,First_name,Last_name,Gender,Age,Rental_ID ) VALUES ('A6','Shehnaz','Bolim','Female',30,006);
INSERT INTO CUSTOMER(Customer_ID,First_name,Last_name,Gender,Age,Rental_ID ) VALUES ('A7','Mohit','Zen','Male',18,007);
INSERT INTO CUSTOMER(Customer_ID,First_name,Last_name,Gender,Age,Rental_ID ) VALUES ('A8','Priyanshi','Sharma','Female',27,008);

SELECT * FROM CUSTOMER;




---TABLE TRANSACTIONS----
CREATE TABLE TRANSACTIONS (
	Trans_ID varchar(30),
	Rental_ID INTEGER,
	Book_ID INTEGER,
	Customer_ID VARCHAR(30),
	Owner_ID  INTEGER,
	Trans_date TIMESTAMP,
	Trans_status varchar(30) NOT NULL,
	PRIMARY KEY (Trans_ID)
);

INSERT INTO TRANSACTIONS (Trans_ID,Rental_ID,Book_ID,Customer_ID,Owner_ID,Trans_date,Trans_status) VALUES ('B1',003,1,'A3',101,'2021-01-05','Complete');
INSERT INTO TRANSACTIONS (Trans_ID,Rental_ID,Book_ID,Customer_ID,Owner_ID,Trans_date,Trans_status) VALUES ('B2',001,2,'A1',102,'2021-01-05','Complete');
INSERT INTO TRANSACTIONS (Trans_ID,Rental_ID,Book_ID,Customer_ID,Owner_ID,Trans_date,Trans_status) VALUES ('B3',002,4,'A2',104,'2021-01-23','Complete');
INSERT INTO TRANSACTIONS (Trans_ID,Rental_ID,Book_ID,Customer_ID,Owner_ID,Trans_date,Trans_status) VALUES ('B4',004,7,'A4',107,'2021-02-11','Complete');
INSERT INTO TRANSACTIONS (Trans_ID,Rental_ID,Book_ID,Customer_ID,Owner_ID,Trans_date,Trans_status) VALUES ('B5',005,2,'A5',102,NULL,'Incomplete');
INSERT INTO TRANSACTIONS (Trans_ID,Rental_ID,Book_ID,Customer_ID,Owner_ID,Trans_date,Trans_status) VALUES ('B6',006,8,'A6',108,'2021-04-15','Complete');
INSERT INTO TRANSACTIONS (Trans_ID,Rental_ID,Book_ID,Customer_ID,Owner_ID,Trans_date,Trans_status) VALUES ('B7',007,3,'A7',103,NULL,'Incomplete');
INSERT INTO TRANSACTIONS (Trans_ID,Rental_ID,Book_ID,Customer_ID,Owner_ID,Trans_date,Trans_status) VALUES ('B8',008,4,'A8',104,'2021-07-05','Complete');
 
SELECT * FROM TRANSACTIONS;
 



----OWNERS----
CREATE TABLE OWNERS (
	Owner_ID INTEGER,
	First_name varchar(30) NOT NULL,
	Last_name varchar(30) NOT NULL,
	Gender varchar(30) NOT NULL,
	Age INTEGER,
	Book_ID INTEGER,
	PRIMARY KEY (Owner_ID)
);
INSERT INTO OWNERS (Owner_ID,First_name,Last_name,Gender,Age,Book_ID) VALUES(101,'Juan','Ibarra','Male',20,1);
INSERT INTO OWNERS (Owner_ID,First_name,Last_name,Gender,Age,Book_ID) VALUES(102,'Christopher', 'Hudson','Male',25,2);
INSERT INTO OWNERS (Owner_ID,First_name,Last_name,Gender,Age,Book_ID) VALUES (103,'Arjun', 'Rege','Male',19,3);
INSERT INTO OWNERS (Owner_ID,First_name,Last_name,Gender,Age,Book_ID) VALUES(104,'Rashmi', 'Bhalla','Female',15,4);
INSERT INTO OWNERS (Owner_ID,First_name,Last_name,Gender,Age,Book_ID) VALUES(105,'Darika', 'Pradhan','Female',22,5);
INSERT INTO OWNERS (Owner_ID,First_name,Last_name,Gender,Age,Book_ID) VALUES(106,'Sameer','Raina','Male',26,6);
INSERT INTO OWNERS (Owner_ID,First_name,Last_name,Gender,Age,Book_ID) VALUES(107,'Naina','Agarwal','Female',23,7);
INSERT INTO OWNERS (Owner_ID,First_name,Last_name,Gender,Age,Book_ID) VALUES(108,'Jesika','Chauhan','Female',24,8);

SELECT * FROM OWNERS;




----AUTHOR TABLE-----
CREATE TABLE AUTHOR (
	Author_ID INTEGER,
	Author_name varchar(50) NOT NULL,
	Book_ID INTEGER,
	Book_Name varchar(50) NOT NULL,
	PRIMARY KEY (Author_ID)
);
INSERT INTO AUTHOR (Author_ID,Author_name,Book_ID,Book_Name) VALUES(1001,'R P N Singh',1,'Politics of Opportunism');
INSERT INTO AUTHOR (Author_ID,Author_name,Book_ID,Book_Name) VALUES(1002,'Akkitham Achuthan Namboodri',2,'Malayalam poetry');
INSERT INTO AUTHOR (Author_ID,Author_name,Book_ID,Book_Name) VALUES(1003,'Margaret Atwood',3,'The Testaments');
INSERT INTO AUTHOR (Author_ID,Author_name,Book_ID,Book_Name) VALUES(1004,'Jokha Alharthi',4,'Celestial Bodies');
INSERT INTO AUTHOR (Author_ID,Author_name,Book_ID,Book_Name) VALUES(1005,'Viswanathan Anand and Susan Ninan	',5,'Mind-Master');
INSERT INTO AUTHOR (Author_ID,Author_name,Book_ID,Book_Name) VALUES(1006,'Chief Justice of India (CJI) Ranjan Gogoi	',6,'Courts of India');
INSERT INTO AUTHOR (Author_ID,Author_name,Book_ID,Book_Name) VALUES(1007,'Shri N Chandrasekaran',7,'Bridgital Nation');
INSERT INTO AUTHOR (Author_ID,Author_name,Book_ID,Book_Name) VALUES(1008,'Baba Ramdev',8,'My Life, My Mission');

SELECT * FROM AUTHOR;


ALTER TABLE BOOKS ADD CONSTRAINT BOOKS_fk0 FOREIGN KEY (Author_Id) REFERENCES AUTHOR(Author_ID);

ALTER TABLE BOOKS ADD CONSTRAINT BOOKS_fk1 FOREIGN KEY (Owner_ID) REFERENCES OWNERS(Owner_ID);

ALTER TABLE RENTAL ADD CONSTRAINT RENTAL_fk0 FOREIGN KEY (Book_ID) REFERENCES BOOKS(Book_ID);

ALTER TABLE RENTAL ADD CONSTRAINT RENTAL_fk1 FOREIGN KEY (Owner_ID) REFERENCES OWNERS(Owner_ID);

ALTER TABLE CUSTOMER ADD CONSTRAINT CUSTOMER_fk0 FOREIGN KEY (Rental_ID) REFERENCES RENTAL(Rental_ID);

ALTER TABLE TRANSACTIONS ADD CONSTRAINT TRANSACTION_fk0 FOREIGN KEY (Rental_ID) REFERENCES RENTAL(Rental_ID);

ALTER TABLE TRANSACTIONS ADD CONSTRAINT TRANSACTION_fk1 FOREIGN KEY (Book_ID) REFERENCES BOOKS(Book_ID);

ALTER TABLE TRANSACTIONS ADD CONSTRAINT TRANSACTION_fk2 FOREIGN KEY (Customer_ID) REFERENCES CUSTOMER(Customer_ID);

ALTER TABLE OWNERS ADD CONSTRAINT OWNER_fk0 FOREIGN KEY (Book_ID) REFERENCES BOOKS(Book_ID);

ALTER TABLE AUTHOR ADD CONSTRAINT AUTHOR_fk0 FOREIGN KEY (Book_ID) REFERENCES BOOKS (Book_ID);





---we need to select the book which is not rented by anyone?----
SELECT * FROM BOOKS WHERE  Book_Status='Not-Rented';

----we need to order the books by its price----
SELECT * FROM BOOKS ORDER BY Rent_Price;

----we need to display the name of books starting with letter M---
SELECT * FROM AUTHOR WHERE Book_Name LIKE 'M%';

---we need to select the data from table authors unitl limit of 7 rows---
SELECT * FROM AUTHOR LIMIT 7;

---we need to set the book id to not null from table books--
ALTER TABLE BOOKS ALTER Book_ID SET NOT NULL;

---we need to check the ownerid  where it is greater than 2---
ALTER TABLE OWNERS ADD CONSTRAINT CHECKID CHECK(Owner_ID >= 2);

SELECT * FROM OWNERS;

---PERFORM INNER JOIN OPERATION WITH TABLE BOOK AND AUTHOR---
SELECT BOOKS.Book_name, AUTHOR.Author_name FROM
BOOKS INNER JOIN AUTHOR ON BOOKS.Book_ID = AUTHOR.Book_ID;

----Write an SQL query to fetch “FIRST_NAME” from owner table using the alias name as Owner Name.----
SELECT First_name AS Owner_name FROM OWNERS;

---Write an SQL query to print BOOK IS AND BOOK NAME of the BOOKS whose RENT PRICE lies between 200 and 300---
SELECT Book_ID,Book_name FROM BOOKS WHERE Rent_Price BETWEEN 200 AND 300;

----Write an SQL query to fetch “CUSTOMER NAME” from CUSTOMERS in upper case.-----
SELECT UPPER(First_name) FROM CUSTOMER;
























 
 




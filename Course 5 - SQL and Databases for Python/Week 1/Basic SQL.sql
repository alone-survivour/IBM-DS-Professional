-- 0. Drop table INSTRUCTOR in case it already exists
drop table  INSTRUCTOR;


-- 1. Task 1: Create the INSTRUCTOR table as defined above. Have the ins_id be the primary key, and ensure the lastname and firstname are not null.
Create table INSTRUCTOR (
ins_Id  INTEGER PRIMARY KEY NOT NULL,
lastname VARCHAR(15) NOT NULL,
firstname VARCHAR(15) NOT NULL,
city VARCHAR(15) ,
country VARCHAR(2)
);

-- Task 2A: Insert one row into the INSTRUCTOR table for the the instructor Rav Ahuja.
INSERT INTO INSTRUCTOR
(ins_id, lastname, firstname, city, country)
VALUES
(1,'Ahuja','Rav','Toronto','CA');

-- Task 2B: Insert two rows at once in the INSTRUCTOR table for instructors Raul Chong and Hima Vasudevan.
INSERT INTO INSTRUCTOR
(ins_id, lastname, firstname, city, country)
VALUES
(2, 'Chong', 'Raul', 'Toronto', 'CA') ,
(3,'Vasudevan','Hima','Chicago','US');

--Task 3: Select all rows from the INSTRUCTOR table.
SELECT * FROM INSTRUCTOR;

--3b. Select firstname, lastname and country where city is Toronto
SELECT firstname, lastname, country from INSTRUCTOR where city='Toronto';

--4. Change the city for Rav to Markham
UPDATE INSTRUCTOR SET city='Markham' where ins_id=1
;
--5. Delete the row for Raul Chong
DELETE FROM INSTRUCTOR where ins_id=2
;
--5b. Retrieve all rows from the table
SELECT * FROM INSTRUCTOR 
;
